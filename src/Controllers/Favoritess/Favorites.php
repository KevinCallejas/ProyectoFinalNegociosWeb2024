<?php
namespace Controllers\Favoritess;
use Controllers\PublicController;
use Views\Renderer;
use Dao\Favoritess\Favoritess as DAOFavorites;
use Utilities\Site;
use Utilities\Validators;
use Utilities\Context;
use Utilities\Paging;
class Favorites extends PublicController {
  private $id_favorite;
  private $usercod;
  private $id_reference;
  private $type_favorite;

    public function run(): void
    {
        Site::addLink('favorites_style');
        $viewData['id_favorite'] = 'id_favorite';
		$viewData['usercod'] = 'usercod';
		$viewData['id_reference'] = 'id_reference';
		$viewData['type_favorite'] = 'type_favorite';
		$viewData['favorites']= DAOFavorites::getFavorites();
        Renderer::render("favoritess/favoriteslist", $viewData);
    }
}
