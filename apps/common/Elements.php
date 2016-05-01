<?php

use Phalcon\Mvc\User\Component;

/**
 * Elements
 *
 * Helps to build UI elements for the application
 */
class Elements extends Component
{

    private $_adminMenu = array(
        'navbar-left' => array(
            'index' => array(
                'caption' => 'Home',
                'action' => 'index'
            ),
            'invoices' => array(
                'caption' => 'Invoices',
                'action' => 'index'
            ),
            'about' => array(
                'caption' => 'About',
                'action' => 'index'
            ),
            'contact' => array(
                'caption' => 'Contact',
                'action' => 'index'
            ),
             'news' => array(
                'caption' => 'news',
                'action' => 'index'
            ),
            'download' => array(
                'caption' => 'Download',
                'action' => 'index'
            ),
        ),
        'navbar-right' => array(
            'useradm' => array(
                'caption' => 'Log In/Sign Up',
                'action' => 'login'
            ),
        )
    );

    private $_tabs = array(
        'Invoices' => array(
            'controller' => 'invoices',
            'action' => 'index',
            'any' => false
        ),
        'Companies' => array(
            'controller' => 'companies',
            'action' => 'index',
            'any' => true
        ),
        'Products' => array(
            'controller' => 'products',
            'action' => 'index',
            'any' => true
        ),
        'Product Types' => array(
            'controller' => 'producttypes',
            'action' => 'index',
            'any' => true
        ),
        'Your Profile' => array(
            'controller' => 'invoices',
            'action' => 'profile',
            'any' => false
        )
    );

    /**
     * Builds header menu with left and right items
     *
     * @return string
     */
    public function getMenu()
    {
    	$cacheKey = 'menu.cache';
		$menu_data  = $this->dataCache->get($cacheKey);
		if ($menu_data === null) {
			$menu_data ='';
		    $list_menu = $this->db->fetchAll("SELECT t.*,'0' as chk ,(select count(*) from menu m where m.parent = t.id) have_child FROM menu t WHERE status = :status",            Phalcon\Db::FETCH_ASSOC,            array('status' => '1'));
	        foreach($list_menu as $key=>$row){
	            if($row['have_child']>0 && $list_menu[$key]['chk']=='0'){
	                $menu_data .= '<li class="dropdown">'.$this->tag->linkTo( 'category/view?id=' . $row['id'], $row['title']);
	                $menu_data .= '<ul class="sub-menu">';
	                foreach($list_menu as $key1=>$sub){
	                    if($sub['parent']==$row['id'] && $list_menu[$key1]['chk']=='0' ){
	                        if($sub['have_child']>0){
	                            $menu_data .= '<li class="dropdown">'.$this->tag->linkTo( 'category/view?id=' . $sub['id'], $sub['title']);
	                            $menu_data .= '<ul class="sub-menu">';
	                            foreach($list_menu as $key2=>$sub2){
	                                if($sub2['parent']==$sub['id'] && $list_menu[$key2]['chk']=='0' ){
	                                    $menu_data .= '<li>'.$this->tag->linkTo( 'category/view?id=' . $sub2['id'], $sub2['title']).'</li>';
	                                    $list_menu[$key2]['chk']='1';
	                                }
	                            }
	                            $menu_data .= '</ul>';
	                            $list_menu[$key1]['chk']='1';
	                        }else{
	                            if($list_menu[$key1]['chk']=='0'){
	                                $menu_data .= '<li>'.$this->tag->linkTo( 'category/view?id=' . $sub['id'], $sub['title']).'</li>';
	                                $list_menu[$key1]['chk']='1';
	                            }
	                        }
	                    }
	                }
	                $menu_data .= '</ul>';
	                $list_menu[$key]['chk']='1';
	            }else{
	                if($list_menu[$key]['chk']=='0'){
	                    $menu_data .= '<li>'.$this->tag->linkTo( 'category/view?id=' . $row['id'], $row['title']).'</li>';
	                    $list_menu[$key]['chk']='1';
	                }                            
	            }
	        }
		    // Store it in the cache
		    $this->dataCache->save($cacheKey, $menu_data);
		    
		}
		echo $menu_data;


        
        /*
        $auth = $this->session->get('auth');
        if ($auth) {
            $this->_headerMenu['navbar-right']['session'] = array(
                'caption' => 'Log Out',
                'action' => 'end'
            );
        } else {
            unset($this->_headerMenu['navbar-left']['invoices']);
        }*/     
        /*$controllerName = $this->view->getControllerName();
        foreach ($this->_headerMenu as $position => $menu) {
            echo '<div class="nav-collapse">';
            echo '<ul class="nav navbar-nav ', $position, '">';
            foreach ($menu as $controller => $option) {
                if ($controllerName == $controller) {
                    echo '<li class="active">';
                } else {
                    echo '<li>';
                }
                echo $this->tag->linkTo($controller . '/' . $option['action'], $option['caption']);
                echo '</li>';
            }
            echo '</ul>';
            echo '</div>';
        }*/

    }
	public function getAdminMenu(){
		
        $auth = $this->session->get('auth');
        if ($auth) {
            $this->_adminMenu['navbar-right']['session'] = array(
                'caption' => 'Log Out',
                'action' => 'end'
            );
        } else {
            unset($this->_adminMenu['navbar-left']['invoices']);
        }
        $controllerName = $this->view->getControllerName();
        echo '<div class="collapse navbar-collapse">';
        foreach ($this->_adminMenu as $position => $menu) {
            
            echo '<ul class="nav navbar-nav ', $position, '">';
            foreach ($menu as $controller => $option) {
                if ($controllerName == $controller) {
                    echo '<li class="active">';
                } else {
                    echo '<li>';
                }
                echo $this->tag->linkTo($controller . '/' . $option['action'], $option['caption']);
                echo '</li>';
            }
            echo '</ul>';
            
        }
        echo '</div>';
	}
    /**
     * Returns menu tabs
     */
    public function getTabs()
    {
        $controllerName = $this->view->getControllerName();
        $actionName = $this->view->getActionName();
        echo '<ul class="nav nav-tabs">';
        foreach ($this->_tabs as $caption => $option) {
            if ($option['controller'] == $controllerName && ($option['action'] == $actionName || $option['any'])) {
                echo '<li class="active">';
            } else {
                echo '<li>';
            }
            echo $this->tag->linkTo($option['controller'] . '/' . $option['action'], $caption), '</li>';
        }
        echo '</ul>';
    }
}
