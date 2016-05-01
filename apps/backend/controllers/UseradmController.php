<?php

namespace Multiple\Backend\Controllers;

use Phalcon\Mvc\Controller;
use Multiple\Models\Users;

class UserAdmController extends Controller
{

	public function indexAction()
	{
		//$this->view->disable();
        return $this->dispatcher->forward(array(  
                    "controller" => "useradm",                 
                    "action"     => "login"
                ));
	}
    public function loginAction()
	{
		//$this->view->disable();
	}
    public function authAction()
    {
        if ($this->request->isPost()) {

            $email = $this->request->getPost('email');
            $password = $this->request->getPost('password');
           // $dd = $this->db->getdbname();
            //$us = new Users();
           //$usr_data = $us->get_all();
            $user = Users::findFirst(array(
                "(email = :email: OR username = :email:) AND password = :password: AND active = 1 ",
                'bind' => array('email' => $email, 'password' => sha1($password))
            ));
            if ($user != false) {
                $this->_registerSession($user);
                $this->flash->success('Welcome ' . $user->name);
                return $this->dispatcher->forward(array(
                    "controller" => "admin",
                    "action"     => "index"
                ));
            }

            $this->flash->error('Wrong email/password');
        }

        /*return $this->dispatcher->forward(array(                   
                    "action"     => "login"
                ));*/
        $this->view->disable();
        $this->response->setJsonContent('Hello');
        return $this->response;
    }
    private function _registerSession(Users $user)
    {
        $this->session->set('auth', array(
            'id' => $user->id,
            'name' => $user->$username
        ));
    }
}
