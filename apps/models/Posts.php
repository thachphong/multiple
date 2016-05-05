<?php

namespace Multiple\Models;

use Phalcon\Mvc\Model;

class Menu extends Model
{
    public $id;
    public $title;
    public $status;
    public $parent;
    public $link;
        
    public function initialize()
    {
        $this->setSource("menu");
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
