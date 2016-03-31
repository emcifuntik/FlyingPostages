<?php
/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 12.10.2015
 * Time: 21:43
 */

namespace Internal;

class Stamps extends \SOAPClient
{
    private $authData  = [
        "Credentials"       => [
            "IntegrationID" => "39ce0aef-2cff-40b3-ab7b-00bb73bced3f",
            "Username"		=> "fromusainfo",
            "Password"      => "tY1p1U32qq"
        ]
    ];

    private $authenticator;

    function __construct($wsdl)
    {
        parent::SoapClient($wsdl,
            array(
                'trace' => 1
            )
        );
        $this->authenticator = parent::AuthenticateUser($this->authData)->Authenticator;
    }

    function CleanseAddress($params)
    {
        $params["Authenticator"] = $this->authenticator;
        $result = parent::CleanseAddress($params);
        $this->authenticator = $result->Authenticator;
        return $result;
    }

    function GetRates($params)
    {
        $params["Authenticator"] = $this->authenticator;
        $result = parent::GetRates($params);
        $this->authenticator = $result->Authenticator;
        return $result;
    }

    function CreateIndicium($params)
    {
        $params["Authenticator"] = $this->authenticator;
        $result = parent::CreateIndicium($params);
        $this->authenticator = $result->Authenticator;
        return $result;
    }
}