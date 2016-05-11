<?php

namespace Multiple\Models;

use Phalcon\Mvc\Model;

class Posts extends Model
{
    public $id;
    public $filename;
    public $type;
    public $size;
    public $caption;
    public $des;
    public $content;
    public $status;
    public $adduser;
    public $youtube_key;
    public $url;
    public $total_view;
    public $total_vote;
    public $add_date;
    public $add_time;
    public $total_comment;
    public $total_like;
    public $resource;
    public $menu_id;
    
        
    public function initialize()
    {
        $this->setSource("posts");
    }
    public function get_All(){
        $usr_data = Menu::find(array('status'=>1));
        return $usr_data;
    }
    public function get_new($limit = 6){
        $data = Posts::find(array(//'ref_link'=>$reflink,
        						  "order" => "id desc",
        						  "limit" => $limit
        						  ));
        /*$data = DownloadStructure::query()
                ->where("ref_link = :ref_link:")  
                ->bind(array("ref_link" => $reflink))
                ->order("sort")
                ->execute();*/
        return $data;
    }
    public function get_realtion_old($id,$type,$menu_id){
        /*$data = Posts::find(array('type'=>$type,
        						  ''
        						  "order" => "id desc",
        						  "limit" => $limit
        						  ));*/
        $data = Posts::query()
                ->where("menu_id = $menu_id ")
                ->addwhere("type = :type:")    
                ->addwhere("id < $id")  
                ->bind(array("type" => $type))
                ->order("id desc")
                ->limit(5)
                ->execute();
        return $data;
    }
    public function get_realtion_new($menu_id,$id){        
        $data = Posts::query()
                ->where("menu_id = $menu_id ")               
                ->addwhere("id <> $id") 
                ->order("id desc")
                ->limit(9)
                ->execute();
        return $data;
    }
    
}
