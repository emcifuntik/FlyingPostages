<?php
/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 03.10.2015
 * Time: 15:46
 */
require "lib/User.php";
require "lib/Template.php";
require "lib/Localization.php";
require "lib/Postage.php";
require "lib/Response.php";
require "lib/Stamps.php";
define("MAIN_LOADED", 1);
//TODO: Сделать разное отображение даты для США и России

if(!isset($COOKIE->access)) {
    header("Location: index.php?action=login");
    exit;
}
$user = User::get_data($COOKIE->access);
if($user === false) {
    header("Location: index.php?action=login");
    exit;
}
$mainTemplate = new Template("template/", "index.tpl");
$mainTemplate->set_value("USER_NAME", $user["user_name"]);
$mainTemplate->set_value("USER_BALANCE", number_format($user["user_money"], 2));
$userTabs = User::get_tabs($user["user_id"]);
if($userTabs !== false)
{
    foreach($userTabs as $tab)
        $mainTemplate->set_tab($tab["tab_name"], "index.php?tab=".$tab["tab_name"]);
}
$lang = "Unknown";
if($user["user_language"] == "ru_RU") $lang = "Русский";
else if($user["user_language"] == "en_EN") $lang = "English";
$mainTemplate->set_value("CURRENT_LANGUAGE", $lang);

$content = null;

$tab = isset($GET->tab) ? $GET->tab : "home";
switch($tab)
{
    case "home":
        $content = new Template("template/", "tab_home.tpl");
        break;
    case "new_label":
        $content = new Template("template/", "tab_new_label.tpl");
        break;
    case "view_label":
        $content = new Template("template/", "tab_view_label.tpl");
        $my_label = Postage::get_indicium($GET->label);
        if($my_label["label_owner"] != $user["user_id"])
            Response::fatal_error("This label is not yours");
        $content->set_value("SHIP_FROM_ZIP", $my_label["rate_zip_from"]);
        $content->set_value("SENDER_NAME", $my_label["sender_fullname"]);
        $content->set_value("SENDER_COMPANY", $my_label["sender_company"]);
        $content->set_value("SENDER_ADDRESS", $my_label["sender_address"]);
        $content->set_value("SENDER_ADD_TO_ADDRESS", $my_label["sender_address2"]);
        $content->set_value("SENDER_CITY", $my_label["sender_city"]);
        $content->set_value("SENDER_STATE", $my_label["sender_state"]);
        $content->set_value("SENDER_ZIP_CODE", $my_label["sender_zip_code"]);
        $content->set_value("SENDER_PHONE", $my_label["sender_phone"]);

        $content->set_value("RECIPIENT_NAME", $my_label["recipient_fullname"]);
        $content->set_value("RECIPIENT_COMPANY", $my_label["recipient_company"]);
        $content->set_value("RECIPIENT_ADDRESS", $my_label["recipient_address"]);
        $content->set_value("RECIPIENT_ADD_TO_ADDRESS", $my_label["recipient_address2"]);
        $content->set_value("RECIPIENT_CITY", $my_label["recipient_city"]);
        $content->set_value("RECIPIENT_STATE", $my_label["recipient_state"]);
        $content->set_value("RECIPIENT_ZIP_CODE", $my_label["recipient_zip_code"]);
        $content->set_value("RECIPIENT_PHONE", $my_label["recipient_phone"]);

        $content->set_value("PACKAGE_TYPE", $my_label["rate_package_type"]);
        $content->set_value("SERVICE_TYPE", $my_label["rate_service"]);
        $content->set_value("WEIGHT_LB", $my_label["rate_weight_lb"]);
        $content->set_value("WEIGHT_OZ", $my_label["rate_weight_oz"]);
        $content->set_value("RECIPIENT_ZIP_CODE", $my_label["recipient_zip_code"]);
        $content->set_value("RECIPIENT_PHONE", $my_label["recipient_phone"]);
        $content->set_value("SMS_NOTIFY", $my_label["label_sms_notify"] ? "{LOCALE:YES}" : "{LOCALE:NO}");
        $content->set_value("AUTO_REFUND", $my_label["label_auto_refund"] ? "{LOCALE:YES}" : "{LOCALE:NO}");
        $content->set_value("PRICE", $my_label["label_price"]);
        if($my_label["label_state"] == 0)
        {
            $content->set_value("BUY_LABEL_HREF", "index.php?tab=buy_label&label=" . $my_label["label_id"]);
            $content->set_switch_value("PAID", "FALSE");
        }
        else
        {
            $content->set_switch_value("PAID", "TRUE");
            $content->set_switch_value("SHOW_TRACKING", "TRUE");
            $content->set_value("TRACK_NUMBER", $my_label["label_tracking_number"]);
            $content->set_value("LABEL_HREF", $my_label["label_url"]);
            $tabRow = $content->load_block("TABLE_ROW");
            $rows = "";
            $tabRow->set_value("DATETIME", "2008-02-19T10:32:00");
            $tabRow->set_value("COUNTRY", "US");
            $tabRow->set_value("STATE", "IN");
            $tabRow->set_value("CITY", "FORT WAYNE");
            $tabRow->set_value("EVENT", "DELIVERED");
            $tabRow->set_value("ROW_CLASS", "success");
            $rows .= $tabRow->finish();
            $content->replace_block("TABLE_ROW", $rows);
        }
        break;
    case "buy_label":
        $my_label = Postage::get_indicium($GET->label);
        if($my_label["label_owner"] != $user["user_id"])
            Response::fatal_error("This label is not yours");
        if($user["user_money"] >= $my_label["label_price"])
            User::set_money($user["user_id"], $user["user_money"] - $my_label["label_price"]);
        $stamps = new \Internal\Stamps('hidden/swsimv42.wsdl');
        $data = [
            "IntegratorTxID" => $my_label["label_integrator_tx_id"],
            "Rate" => [
                "FromZIPCode" => $my_label["rate_zip_from"],
                "ToZIPCode" => $my_label["rate_zip_to"],
                "Amount" => $my_label["rate_amount"],
                "ServiceType" => $my_label["rate_service"],
                "WeightLb" => $my_label["rate_weight_lb"],
                "WeightOz" => $my_label["rate_weight_oz"],
                "PackageType" => $my_label["rate_package_type"],
                "ShipDate" => $my_label["rate_ship_date"]
            ],
            "From" => [
                "FullName" => $my_label["sender_fullname"],
                "Company" => $my_label["sender_company"],
                "Address1" => $my_label["sender_address"],
                "Address2" => $my_label["sender_address2"],
                "City" => $my_label["sender_city"],
                "State" => $my_label["sender_state"],
                "ZIPCode" => $my_label["sender_zip_code"],
                "PhoneNumber" => $my_label["sender_phone"]
            ],
            "To" => [
                "FullName" => $my_label["recipient_fullname"],
                "Company" => $my_label["recipient_company"],
                "Address1" => $my_label["recipient_address"],
                "Address2" => $my_label["recipient_address2"],
                "City" => $my_label["recipient_city"],
                "State" => $my_label["recipient_state"],
                "ZIPCode" => $my_label["recipient_zip_code"],
                "PhoneNumber" => $my_label["recipient_phone"],
                "ZIPCodeAddOn" => $my_label["recipient_zipcode_addon"],
                "DPB" => $my_label["recipient_dpb"],
                "CheckDigit" => $my_label["recipient_checkdigit"],
                "CleanseHash" => $my_label["recipient_cleanse"],
                "OverrideHash" => $my_label["recipient_override"]
            ],
            "SampleOnly" => true
        ];
        $result = $stamps->CreateIndicium($data);
        //var_dump($result);
        Postage::sell_indicium($my_label["label_id"], $result->URL, $result->TrackingNumber, $result->StampsTxID);
        //die($result->URL);
        header("Location: index.php?tab=view_label&label=" . $my_label["label_id"]);
        return;
    case "my_labels":
        require_once "my_labels.php";
        break;
    case "users":
        require_once "users.php";
        break;
    case "settings":
        require_once "settings.php";
        break;
}

$mainTemplate->set_value("CONTENT", $content->finish());
$tempText = $mainTemplate->finish();
$mainLocale = new Localization($tempText);
$mainLocale->loadLocale("localization/".$user["user_language"].".lng");
die($mainLocale->localize());