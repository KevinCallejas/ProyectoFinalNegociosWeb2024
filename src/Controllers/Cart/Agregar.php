<?php


namespace Controllers\Cart; 

use Controllers\PrivateController;
use Utilities\Site;
use Views\Renderer;
use Utilities\Secur\Crypt as sec;
use Dao\Dao;
use Utilities\Validators;
use Utilities\Context;
use Utilities\Paging;
/*

Método cart(): Este método estático maneja la lógica relacionada con el carrito de compras. Verifica si se ha enviado un formulario de agregar al carrito, actualiza el carrito en consecuencia y muestra una alerta.
 */
class Agregar extends PrivateController
{
    public function run(): void
    {
      
      self::cart();
    
    }
    }