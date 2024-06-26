<?php
  namespace Controllers;
/*Este archivo PHP define una clase llamada NoAuth dentro del espacio de nombres Controllers. Aquí hay un resumen de su funcionalidad:

Espacio de nombres (namespace): La clase está dentro del espacio de nombres Controllers, lo que sugiere que forma parte de un conjunto de controladores en la aplicación.

Clase NoAuth: Esta clase probablemente se utiliza para manejar casos en los que un usuario no está autenticado.

Método run(): Este método es público y no devuelve ningún valor (void). Controla la lógica para renderizar una vista llamada "noauth" utilizando el renderer de vistas. Si el usuario está autenticado, renderiza la vista usando un posible diseño privado (PRIVATE_LAYOUT), de lo contrario, simplemente renderiza la vista "noauth". */
class NoAuth extends PublicController
{
    public function run() :void
    {
        
        if (\Utilities\Security::isLogged()){
            if (\Utilities\Context::getContextByKey("PRIVATE_LAYOUT") !== "") {
                \Views\Renderer::render(
                    "noauth",
                    array(),
                    \Utilities\Context::getContextByKey("PRIVATE_LAYOUT")
                );
            } else {
                \Views\Renderer::render("noauth", array());
            }
        } else {
            \Views\Renderer::render("noauth", array());
        }
    }
}
?>