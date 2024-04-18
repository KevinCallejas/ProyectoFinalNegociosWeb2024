<?php
    namespace Controllers\Checkout;
/*
Este controlador PHP maneja la página de error durante el proceso de pago. Aquí está la función principal:

run(): Este método se ejecuta al cargar la página de error durante el proceso de pago. Simplemente imprime "error" en la página y luego finaliza el script con die(). También inicializa los datos de la vista con información sobre el tipo de usuario que está accediendo a la página de error. */
use Controllers\PublicController;
class Error extends PublicController
{
    public function run(): void
    {
        echo "error";
        $viewData['isCLN'] = \Dao\Security\Security::userIs($_SESSION['useremail'],'CLN'); 
        $viewData['isCLS'] = \Dao\Security\Security::userIs($_SESSION['useremail'],'CLS'); 
        $viewData['isADMIN'] = \Dao\Security\Security::userIs($_SESSION['useremail'],'ADMIN'); 
        die();
    }
}

?>