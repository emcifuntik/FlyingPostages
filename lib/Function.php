<?php
/**
 * Created by PhpStorm.
 * User: emcif
 * Date: 12.10.2015
 * Time: 12:51
 */

namespace Extended {
    function paginate($currentPage, $totalPages, $pagesShow)
    {
        $pagination = [];
        if($currentPage <= 0 || $currentPage > $totalPages)
            $currentPage = 1;
        if($totalPages <= 1)
            return $pagination;

        $pageFrom = (($currentPage - intval(floor($pagesShow/2))) >= 1) ?
            ($currentPage - intval(floor($pagesShow/2))) :
            1;
        $pageTo = (($currentPage + intval(floor($pagesShow/2))) <= $totalPages) ?
            ($currentPage + intval(floor($pagesShow/2))) :
            $totalPages;

        if($currentPage != 1)
        {
            $page = new \stdClass();
            $page->page = 1;
            $page->text = "{FIRST}";
            $pagination[] = $page;

            $page = new \stdClass();
            $page->page = $currentPage - 1;
            $page->text = "{PREVIOUS}";
            $pagination[] = $page;
        }
        for($i = $pageFrom; $i <= $pageTo; ++$i)
        {
            $page = new \stdClass();
            $page->page = $i;
            $page->text = $i;
            $pagination[] = $page;
        }
        if($currentPage != $totalPages)
        {
            $page = new \stdClass();
            $page->page = $currentPage + 1;
            $page->text = "{NEXT}";
            $pagination[] = $page;

            $page = new \stdClass();
            $page->page = $totalPages;
            $page->text = "{LAST}";
            $pagination[] = $page;
        }
        return $pagination;
    }

    function randString($length = 128) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }
}