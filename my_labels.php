<?php
/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 12.10.2015
 * Time: 13:25
 */
require "lib/Function.php";

$pagesToShow = 6;
$content = new Template("template/", "tab_my_labels.tpl");
$tableRows = "";
$tableRow = $content->load_block("TABLE_ROW");

$my_labels = Postage::get_indiciums($user["user_id"]);

if($my_labels !== false) {
    foreach ($my_labels as $label) {
        $tableRow->reset();
        if ($label["label_state"] == 1) {
            $tableRow->set_switch_value("PAID", "TRUE");
            $tableRow->set_value("LABEL_DATE", $label["label_buy_time"]);
        } else
            $tableRow->set_switch_value("PAID", "FALSE");
        $tableRow->set_value("LABEL_HREF", "index.php?tab=view_label&label=" . $label["label_id"]);
        $tableRow->set_value("ROUTE", //($i % 2 == 0) ?
            //"<i class=\"fa fa-globe fa-fw\"></i>{LOCALE:INTERNATIONAL}" :
            "<i class=\"fa fa-home fa-fw\"></i>{LOCALE:LOCAL}"
        );
        $tableRow->set_value("SENDER_NAME", $label["sender_fullname"]);
        $tableRow->set_value("RECIPIENT_NAME", $label["recipient_fullname"]);
        $tableRow->set_value("TRACK_NUMBER", $label["label_tracking_number"]);
        $tableRow->set_value("LABEL_PDF_HREF", $label["label_url"]);
        $tableRows .= $tableRow->finish();
    }
}
$content->replace_block("TABLE_ROW", $tableRows);

$pageCount = 1;
$pageCurrent = isset($GET->page) ? $GET->page : 1;
$pages = Extended\paginate($pageCurrent, $pageCount, $pagesToShow);
$pagination = $content->load_block("PAGINATION");
$pagesResult = "";
foreach($pages as $page)
{
    $pagination->reset();
    switch($page->text)
    {
        case "{FIRST}":
            $pagination->set_value("PAGINATION_CLASS", "");
            $pagination->set_value("PAGINATION_TEXT", "<i class=\"fa fa-angle-double-left fa-fw\"></i>");
            break;
        case "{PREVIOUS}":
            $pagination->set_value("PAGINATION_CLASS", "");
            $pagination->set_value("PAGINATION_TEXT", "<i class=\"fa fa-angle-left fa-fw\"></i>");
            break;
        case "{LAST}":
            $pagination->set_value("PAGINATION_CLASS", "");
            $pagination->set_value("PAGINATION_TEXT", "<i class=\"fa fa-angle-double-right fa-fw\"></i>");
            break;
        case "{NEXT}":
            $pagination->set_value("PAGINATION_CLASS", "");
            $pagination->set_value("PAGINATION_TEXT", "<i class=\"fa fa-angle-right fa-fw\"></i>");
            break;
        default:
            if($page->page == $pageCurrent) {
                $pagination->set_value("PAGINATION_CLASS", "disabled");
                $pagination->set_value("PAGINATION_HREF", "#");
            }
            else {
                $pagination->set_value("PAGINATION_CLASS", "");
            }
            $pagination->set_value("PAGINATION_TEXT", $page->page);
            break;
    }
    $pagination->set_value("PAGINATION_HREF", "index.php?tab=my_labels&page=".$page->page);
    $pagesResult .= $pagination->finish();
}
$content->replace_block("PAGINATION", $pagesResult);