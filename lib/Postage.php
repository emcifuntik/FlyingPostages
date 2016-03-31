<?php

/**
 * Postage short summary.
 *
 * Postage description.p
 *
 * @version 1.0
 * @author emcif
 * @date 04.05.2015
 * @time 13:39
 */
class Postage
{
    static public $mysql = null;

    /**
     * @param $fullname
     * @param $company
     * @param $address
     * @param $address2
     * @param $city
     * @param $state
     * @param $zipcode
     * @param string $phone
     * @return bool|int
     */
    public static function create_sender($fullname, $company, $address, $address2, $city, $state, $zipcode, $phone = "")
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("INSERT INTO `senders` (`sender_fullname`, `sender_company`,".
            "`sender_address`, `sender_address2`, `sender_city`, `sender_state`, `sender_zip_code`, `sender_phone`) " .
            "VALUE (?, ?, ?, ?, ?, ?, ?, ?)")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("ssssssss",
            $fullname,
            $company,
            $address,
            $address2,
            $city,
            $state,
            $zipcode,
            $phone
        );
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

    public static function create_recipient($fullname, $company, $address, $address2, $city, $state, $zipcode, $zipcode_addon = "", $dpb = "", $checkdigit = "", $urbanization = "", $cleanse = "", $override = "", $phone = "")
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("INSERT INTO `recipients` (`recipient_fullname`, `recipient_company`,".
            "`recipient_address`, `recipient_address2`, `recipient_city`, `recipient_state`, `recipient_zip_code`,".
            "`recipient_zipcode_addon`, `recipient_dpb`, `recipient_checkdigit`, `recipient_urbanization`, `recipient_cleanse`, `recipient_override`, `recipient_phone`) " .
            "VALUE (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("ssssssssssssss",
            $fullname,
            $company,
            $address,
            $address2,
            $city,
            $state,
            $zipcode,
            $zipcode_addon,
            $dpb,
            $checkdigit,
            $urbanization,
            $cleanse,
            $override,
            $phone
        );
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

    public static function create_rate($zip_from, $zip_to, $amount, $service, $delivery_date, $weight_lb, $weight_oz, $package_type, $ship_date)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("INSERT INTO `rates` (`rate_zip_from`, `rate_zip_to`, `rate_amount`, `rate_service`, `rate_delivery_date`, `rate_weight_lb`, `rate_weight_oz`, `rate_package_type`, `rate_ship_date`) " .
            "VALUE (?, ?, ?, ?, ?, ?, ?, ?, ?)")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("ssdssiiss", $zip_from, $zip_to, $amount, $service, $delivery_date, $weight_lb, $weight_oz, $package_type, $ship_date);
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

    public static function create_indicium($owner, $moderator, $integrator_tx_id, $rate, $from, $to, $price, $sms_notify = false, $auto_refund = false)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("INSERT INTO `labels` (`label_owner`, `label_moderator`, `label_integrator_tx_id`, `label_rate`, `label_from`, `label_to`, `label_price`, `label_sms_notify`, `label_auto_refund`) " .
            "VALUE (?, ?, ?, ?, ?, ?, ?, ?, ?)")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("iisiiifii", $owner, $moderator, $integrator_tx_id, $rate, $from, $to, $price, $sms_notify, $auto_refund);
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

    public static function sell_indicium($indicium, $url, $track, $stamps_tx_id)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare("UPDATE `labels` SET `label_state`=1, `label_url`=?, `label_tracking_number`=?, `label_stamps_tx_id`=?, `label_buy_time`=NOW() WHERE `label_id`=?")
        or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("sssi", $url, $track, $stamps_tx_id, $indicium);
        $prep_query->execute();
        $prep_query->store_result();
        if ($prep_query->affected_rows > 0)
            return true;
        else
            return false;
    }

    public static function get_indiciums($owner)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare(
            "SELECT * FROM `labels`".
            "LEFT JOIN `rates` ON `labels`.`label_rate` = `rates`.`rate_id`".
            "LEFT JOIN `senders` ON `labels`.`label_from` = `senders`.`sender_id`".
            "LEFT JOIN `recipients` ON `labels`.`label_to` = `recipients`.`recipient_id`".
            "WHERE `label_owner` = ?"
        ) or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("i", $owner);
        $prep_query->execute();
        $query_result = $prep_query->get_result();
        $result = [];
        if ($prep_query->affected_rows > 0) {
            while($temp = $query_result->fetch_assoc())
                $result[] = $temp;
            $query_result->free();
            return $result;
        } else {
            if($query_result !== false)
                $query_result->free();
            return false;
        }
    }

    public static function get_indicium($indicium_id)
    {
        $mysql = MySQL::GetInstance();
        $prep_query = $mysql->prepare(
            "SELECT * FROM `labels`".
            "LEFT JOIN `rates` ON `labels`.`label_rate` = `rates`.`rate_id`".
            "LEFT JOIN `senders` ON `labels`.`label_from` = `senders`.`sender_id`".
            "LEFT JOIN `recipients` ON `labels`.`label_to` = `recipients`.`recipient_id`".
            "WHERE `label_id` = ? LIMIT 1"
        ) or die('MySQL Error. Error[' . $mysql->errno . ']: ' . $mysql->error);
        $prep_query->bind_param("i", $indicium_id);
        $prep_query->execute();
        $query_result = $prep_query->get_result();
        if ($prep_query->affected_rows > 0)
            return $query_result->fetch_assoc();
        else {
            if($query_result !== false)
                $query_result->free();
            return false;
        }
    }
}
