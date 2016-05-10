<?php

namespace Multiple\Models;

use Phalcon\Mvc\Model;

class Tags extends Model
{
    public $tag_id;
    public $tag_no;
    public $tag_name;
    
        
    public function initialize()
    {
        $this->setSource("tags");
    }   
}
