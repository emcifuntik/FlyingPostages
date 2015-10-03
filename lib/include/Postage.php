<?php

/**
 * Postage short summary.
 *
 * Postage description.
 *
 * @version 1.0
 * @author emcif
 * @date 04.05.2015
 * @time 13:39
 */
class Postage
{
    static public $mysql = null;

    public static function create_address($fullname, $address, $zipcode, $state = "", $city = "", $cleanse = "", $override = "")
    {
        $prep_query = Postage::$mysql->prepare("INSERT INTO `addresses` (`address_fullname`, `address_address`, `address_zip_code`, `address_state`, `address_city`) " .
            "VALUE (?, ?, ?, ?, ?)")
        or die('MySQL Error. Error[' . Postage::$mysql->errno . ']: ' . Postage::$mysql->error);
        $prep_query->bind_param("sssss", $fullname, $address, $zipcode, $state, $city);
        $prep_query->execute();
        $prep_query->store_result();
        if ($prep_query->affected_rows > 0) {
            $prep_query->free_result();
            return $prep_query->insert_id;
        } else {
            $prep_query->free_result();
            return false;
        }
    }

    public static function create_rate($zip_from, $zip_to, $amount, $service, $weight_lb, $weight_oz, $package_type, $ship_date, $delivery_date, $addons)
    {
        $prep_query = Postage::$mysql->prepare("INSERT INTO `rates` (`rate_zip_from`, `rate_zip_to`, `rate_service`, `rate_weight_lb`, `rate_weight_oz`, `rate_package_type`, `rate_ship_date`, `rate_addons`) " .
            "VALUE (?, ?, ?, ?, ?, ?, ?, ?)")
        or die('MySQL Error. Error[' . Postage::$mysql->errno . ']: ' . Postage::$mysql->error);
        $prep_query->bind_param("ssisiissss", $zip_from, $zip_to, $amount, $service, $weight_lb, $weight_oz, $package_type, $ship_date, $delivery_date, $addons);
        $prep_query->execute();
        $prep_query->store_result();
        if ($prep_query->affected_rows > 0) {
            $prep_query->free_result();
            return $prep_query->insert_id;
        } else {
            $prep_query->free_result();
            return false;
        }
    }

    public static function create_indicium($owner, $moderator, $integrator_tx_id, $rate, $from, $to)
    {
        $prep_query = Postage::$mysql->prepare("INSERT INTO `labels` (`label_owner`, `label_moderator`, `label_integrator_tx_id`, `label_rate`, `label_from`, `label_to`) " .
            "VALUE (?, ?, ?, ?, ?, ?)")
        or die('MySQL Error. Error[' . Postage::$mysql->errno . ']: ' . Postage::$mysql->error);
        $prep_query->bind_param("iisiii", $owner, $moderator, $integrator_tx_id, $rate, $from, $to);
        $prep_query->execute();
        $prep_query->store_result();
        if ($prep_query->affected_rows > 0) {
            $prep_query->free_result();
            return $prep_query->insert_id;
        } else {
            $prep_query->free_result();
            return false;
        }
    }
}
