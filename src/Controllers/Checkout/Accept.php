<?php
    /*Este controlador PHP se encarga de aceptar y procesar una orden de compra utilizando PayPal. Al recibir una solicitud, primero verifica si el token proporcionado coincide con el almacenado en la sesión. Si hay coincidencia, utiliza la clase `PayPalCapture` del espacio de nombres `Utilities\Paypal` para capturar la orden y obtener detalles de la compra. Luego, guarda los detalles de la compra utilizando el método `addPurchase` de la clase `Checkout`, y obtiene estos detalles para mostrarlos en la vista. Además, elimina los datos del carrito de la sesión una vez que se ha completado la compra. Si no hay un token válido o no se encuentra la orden en la sesión, muestra un mensaje indicando que no hay orden disponible. La seguridad del acceso se gestiona utilizando la clase `Security` del espacio de nombres `Dao\Security`. Finalmente, renderiza la vista asociada utilizando el motor de plantillas `Renderer`. */
namespace Controllers\Checkout;
Use Controllers\Checkout\Checkout as check; 
use Controllers\PublicController;
class Accept extends PublicController{
    public function run():void
    {
        $dataview = array();
        $token = $_GET["token"] ?: "";
        $session_token = $_SESSION["orderid"] ?: "";
        if ($token !== "" && $token == $session_token) {
            $result = \Utilities\Paypal\PayPalCapture::captureOrder($session_token);
            $_SESSION["orderjson"] = json_encode($result, JSON_PRETTY_PRINT);
            check::addPurchase(json_encode($result, JSON_PRETTY_PRINT));
            $dataview['purchasedetails'] = check::getDetail(); 
            $datum = 'cart'.strval($_SESSION['xls']);
            unset($_SESSION[$datum]);
            unset($_SESSION['xls']);
        } else {
            $dataview["purchasedetails"] = "No Order Available!!!";
        }
        $viewData['isCLN'] = \Dao\Security\Security::userIs($_SESSION['useremail'],'CLN'); 
        $viewData['isADMIN'] = \Dao\Security\Security::userIs($_SESSION['useremail'],'ADMIN'); 
        \Views\Renderer::render("paypal/accept", $dataview);
    }
}

?>