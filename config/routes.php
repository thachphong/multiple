<?php

$router = new \Phalcon\Mvc\Router(false);

$router->removeExtraSlashes(true);

/**
 * Frontend routes
 */
			$router->setDefaultModule("frontend");

			$router->add('/:controller/:action', array(
				'module' => 'frontend',
				'controller' => 1,
				'action' => 2,
			));
			$router->add("/news/:params", array(
				'module' => 'frontend',
				'controller' => 'news',
				'action' => 'index',
                'params' => 1
			));
			$router->add("/login", array(
				'module' => 'backend',
				'controller' => 'login',
				'action' => 'index',
			));
			
			$router->add("/admin", array(
				'module' => 'backend',
				'controller' => 'index',
				'action' => 'index',
			));
			$router->add("/admin/products/:action", array(
				'module' => 'backend',
				'controller' => 'products',
				'action' => 1,
			));
            $router->add("/download", array(
				'module' => 'backend',
				'controller' => 'download',
				'action' => 'index',
			));
			$router->add("/download/:action", array(
				'module' => 'backend',
				'controller' => 'download',
				'action' => 1,
			));
            $router->add("/useradm", array(
				'module' => 'backend',
				'controller' => 'useradm',
				'action' => 'index',
			));
			$router->add("/useradm/:action", array(
				'module' => 'backend',
				'controller' => 'useradm',
				'action' => 1,
			));

			return $router;

		

