<?php

namespace Multiple\Models;

use Phalcon\Mvc\Model;

class Menu extends Model
{
    public $id;
    public $title;
    public $status;
    public $parent;
    public $no;
    public $sort;
    public function initialize()
    {
        $this->setSource("menu");
    }
    public function get_All(){
        $usr_data = Menu::find(array('status'=>1));
        return $usr_data;
    }
    
}
