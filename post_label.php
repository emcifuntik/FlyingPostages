<?php
/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 12.10.2015
 * Time: 21:19
 */
require "lib/User.php";
require "lib/Stamps.php";
require "lib/Postage.php";
require "lib/Function.php";
//TODO: Добавление адресов и рейта в базу
if(!isset($COOKIE->access)) {
    header("Location: index.php?action=login");
    exit;
}
$user = User::get_data($COOKIE->access);
if($user === false) {
    header("Location: index.php?action=login");
    exit;
}
$STAMPS = new Internal\Stamps('hidden/swsimv42.wsdl');
if($GET->route == "domestic") {
    $params = [
        "Address" => [
            "FullName" => $POST->to["name"],
            "Company" => "",
            "Address1" => $POST->to["address"],
            "Address2" => $POST->to["additional"],
            "City" => $POST->to["city"],
            "State" => $POST->to["state"],
            "ZIPCode" => $POST->to["zip"],
            "Phone" => $POST->to["phone"]
        ],
        "FromZIPCode" => $POST->from["fromzip"]
    ];
    $cleanseResult = $STAMPS->CleanseAddress($params);
    if($cleanseResult->AddressMatch == false)
        die("Street address not found");
    else if($cleanseResult->CityStateZipOK == false)
        die("Wrong address");

    $rate = new stdClass();
    foreach($cleanseResult->Rates->Rate as $one)
    {
        if(
            $one->ServiceType == $POST->params["service_type"] &&
            $one->PackageType == $POST->params["package_type"]
        )
        {
            $rate = $one;
            break;
        }
    }
    if(!isset($rate->FromZIPCode))
    {
        die(
            'Error!!!'
        );
    }

    $params = [
        "Rate" => [
            "FromZIPCode" => $rate->FromZIPCode,
            "ToZIPCode" => $rate->ToZIPCode,
            "ServiceType" => $rate->ServiceType,
            "DeliverDays" => $rate->DeliverDays,
            "PackageType" => $rate->PackageType,
            "ShipDate" => $rate->ShipDate,
            "DeliveryDate" => $rate->DeliveryDate,
            "WeightLb" => (isset($POST->params["weight_lbs"]) ? $POST->params["weight_lbs"] : 0),
            "WeightOz" => (isset($POST->params["weight_oz"]) ? $POST->params["weight_oz"] : 0)
        ]
    ];
    $rates = $STAMPS->GetRates($params);

    $sender = Postage::create_sender(
        $POST->from["name"],
        $POST->from["company"],
        $POST->from["address"],
        $POST->from["additional"],
        $POST->from["city"],
        $POST->from["state"],
        $POST->from["zip"],
        $POST->from["phone"]
    );

    $recipient = Postage::create_recipient(
        $cleanseResult->Address->FullName,
        $cleanseResult->Address->Company,
        $cleanseResult->Address->Address1,
        $cleanseResult->Address->Address2,
        $cleanseResult->Address->City,
        $cleanseResult->Address->State,
        $cleanseResult->Address->ZIPCode,
        $cleanseResult->Address->ZIPCodeAddOn,
        $cleanseResult->Address->DPB,
        $cleanseResult->Address->CheckDigit,
        $cleanseResult->Address->Urbanization,
        $cleanseResult->Address->CleanseHash,
        $cleanseResult->Address->OverrideHash,
        isset($cleanseResult->Address->Phone) ? $cleanseResult->Address->Phone : ""
    );

    $rate = Postage::create_rate(
        $rates->Rates->Rate->FromZIPCode,
        $rates->Rates->Rate->ToZIPCode,
        $rates->Rates->Rate->Amount,
        $rates->Rates->Rate->ServiceType,
        $rates->Rates->Rate->DeliveryDate,
        (isset($rates->Rates->Rate->WeightLb) ? $rates->Rates->Rate->WeightLb : 0),
        (isset($rates->Rates->Rate->WeightOz) ? $rates->Rates->Rate->WeightOz : 0),
        $rates->Rates->Rate->PackageType,
        $rates->Rates->Rate->ShipDate
    );

    $label_id = Postage::create_indicium($user["user_id"], 0, Extended\randString(), $rate,
        $sender, $recipient, $rates->Rates->Rate->Amount + $user["group_package_price"],
        isset($POST->params["sms_notification"]) ? 0 : $POST->params["sms_notification"],
        isset($POST->params["auto_refund"]) ? 0 : $POST->params["auto_refund"]);
    die('Label id = '.$label_id);
    /*$params = [
        "IntegratorTxID" => Extended\randString(),
        "Rate" => [
            "FromZIPCode" => $rates->Rates->Rate->FromZIPCode,
            "ToZIPCode" => $rates->Rates->Rate->ToZIPCode,
            "ServiceType" => $rates->Rates->Rate->ServiceType,
            "PackageType" => $rates->Rates->Rate->PackageType,
            "ShipDate" => $rates->Rates->Rate->ShipDate,
            "WeightLb" => $rates->Rates->Rate->WeightLb,
            "WeightOz" => $rates->Rates->Rate->WeightOz
        ],
        "From" => [
            "FullName" => $POST->from["name"],
            "Company" => $POST->from["company"],
            "Address1" => $POST->from["address"],
            "Address2" => $POST->from["additional"],
            "City" => $POST->from["city"],
            "State" => $POST->from["state"],
            "ZIPCode" => $POST->from["zip"],
            "Phone" => $POST->from["phone"]
        ],
        "To" => [
            "FullName" => $cleanseResult->Address->FullName,
            "Company" => $cleanseResult->Address->Company,
            "Address1" => $cleanseResult->Address->Address1,
            "Address2" => $cleanseResult->Address->Address2,
            "City" => $cleanseResult->Address->City,
            "State" => $cleanseResult->Address->State,
            "ZIPCode" => $cleanseResult->Address->ZIPCode,
            "ZIPCodeAddOn" => $cleanseResult->Address->ZIPCodeAddOn,
            "DPB" => $cleanseResult->Address->DPB,
            "CheckDigit" => $cleanseResult->Address->CheckDigit,
            "Urbanization" => $cleanseResult->Address->Urbanization,
            "CleanseHash" => $cleanseResult->Address->CleanseHash,
            "OverrideHash" => $cleanseResult->Address->OverrideHash
        ],
        "SampleOnly" => true,
        "ImageType" => "Pdf"
    ];
    $indicium = $STAMPS->CreateIndicium($params);
    header('Location: '.$indicium->URL);*/
}