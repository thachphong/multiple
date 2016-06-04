<?php

namespace Multiple\Models;

use Phalcon\Mvc\Model;

class DownloadCategory extends Model
{
    public $id;
    public $menu_id;
    public $link;
    public $max_get;
    
    public function initialize()
    {
        $this->setSource("download_category");
    }
    public function get_All(){
        $usr_data = Menu::find(array('status'=>1));
        return $usr_data;
    }   
}
