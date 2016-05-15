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
    public $from_string;
    public $to_string;
    public $sort;
        
    public function initialize()
    {
        $this->setSource("download_structure");
    }
    public function get_by_ref_link($reflink){
        //$data = DownloadStructure::find(array('ref_link'=>$reflink,  "order" => "sort"));
        $data = DownloadStructure::query()
                ->where("ref_link = :ref_link:")  
                ->bind(array("ref_link" => $reflink))
                ->order("sort")
                ->execute();
        return $data;
    }
    
}
