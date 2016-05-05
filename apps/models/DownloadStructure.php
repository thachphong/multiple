<?php

namespace Multiple\Models;

use Phalcon\Mvc\Model;

class DownloadStructure extends Model
{
    public $id;
    public $key;
    public $description;
    public $xpath;
    public $ref_link;
    public $element_remove;
        
    public function initialize()
    {
        $this->setSource("download_structure");
    }
    public function get_by_ref_link($reflink){
        $data = Menu::find(array('ref_link'=>$reflink));
        return $data;
    }
    
}
