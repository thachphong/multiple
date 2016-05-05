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
    /*public function validation()
    {
        $this->validate(new EmailValidator(array(
            'field' => 'email'
        )));
        $this->validate(new UniquenessValidator(array(
            'field' => 'email',
            'message' => 'Sorry, The email was registered by another user'
        )));
        $this->validate(new UniquenessValidator(array(
            'field' => 'username',
            'message' => 'Sorry, That username is already taken'
        )));
        if ($this->validationHasFailed() == true) {
            return false;
        }
    }*/
}
