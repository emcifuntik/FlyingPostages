<?php
/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 23.03.2016
 * Time: 12:29
 */

//TODO: Доделать JSON дату для группы (переходы)
if(!defined("MAIN_LOADED"))
    $content = new Template("template/", "access_error.tpl");
else {
    if(!isset($GET->page)) {
        $content = new Template("template/", "settings.tpl");
        $content->set_value("NEW_GROUP", "index.php?tab=settings&page=new_group");
        $groups = User::get_groups();
        $groupRow = $content->load_block("GROUP_ROW");
        $groupRows = "";
        foreach ($groups as $group) {
            $groupRow->reset();
            $groupRow->set_value("GROUP_ID", $group["group_id"]);
            $groupRow->set_value("GROUP_NAME", $group["group_name"]);
            $groupRow->set_value("GROUP_COLOR", $group["group_color"]);
            $groupRow->set_value("PACKAGE_PRICE", $group["group_package_price"]);
            $groupRow->set_value("MEMBERS_COUNT", $group["group_members_count"]);

            $groupRow->set_value("EDIT_HREF", "index.php?tab=settings&page=edit_group&id=" . $group["group_id"]);
            $groupRow->set_value("MEMBERS_HREF", "index.php?tab=settings&page=group_members&id=" . $group["group_id"]);
            $groupRow->set_value("PERMISSIONS_HREF", "index.php?tab=settings&page=permissions&id=" . $group["group_id"]);
            $groupRow->set_value("DELETE_HREF", "index.php?tab=settings&page=delete&id=" . $group["group_id"]);

            $groupRows .= $groupRow->finish();
        }
        $content->replace_block("GROUP_ROW", $groupRows);
    }
    else {
        switch($GET->page)
        {
            case "new_group":
                if(isset($POST->group)) {
                    User::new_group($POST->group["name"], $POST->group["color"], $POST->group["price"]);
                    header("Location: index.php?tab=settings");
                }
                else {
                    $content = new Template("template/", "group_new.tpl");
                    $permissionRow = $content->load_block("PERMISSION_ROW");
                    $groups = User::get_groups();
                    $permissionRows = "";
                    foreach ($groups as $group) {
                        $permissionRow->reset();
                        $permissionRow->set_value("GROUP_ID", $group["group_id"]);
                        $permissionRow->set_value("GROUP_NAME", $group["group_name"]);
                        $permissionRows .= $permissionRow->finish();
                    }
                    $content->replace_block("PERMISSION_ROW", $permissionRows);
                    $content->set_value("NEW_GROUP_QUERY", "index.php?tab=settings&page=new_group");
                }
                break;
            case "edit_group":
                if(!isset($GET->id))
                    die();
                if(isset($POST->group)) {
                    User::set_group($GET->id, $POST->group["name"], $POST->group["color"], $POST->group["price"]);
                    header("Location: index.php?tab=settings");
                }
                else {
                    $content = new Template("template/", "group_edit.tpl");
                    $group = User::get_group($GET->id);
                    $content->set_value("GROUP_COLOR", $group["group_color"]);
                    $content->set_value("GROUP_NAME", $group["group_name"]);
                    $content->set_value("PACKAGE_PRICE", $group["group_package_price"]);
                    $content->set_value("GROUP_EDIT_QUERY", "index.php?tab=settings&page=edit_group&id=" . $group["group_id"]);
                }
                break;
            case "group_members":
                break;
            case "permissions":
                break;
            case "delete":
                break;
        }
    }
}