<?php

namespace Controllers\Home;
Use DAO\Artists\Artists as artists; 
use DAO\Videos\Videos AS videos;
use Dao\Albums\Albums as albums; 
use Dao\Genres\Genres as genre; 
use Controllers\PrivateController as PrivateController;

class Home extends PrivateController
{
    public function run(): void
    {
        $dataview = array();
        $dataview['artist'] = artists::gettop(); 
        $dataview['albums'] = albums::gettop();
        $dataview['videos'] = videos::gettop();
        $dataview['genre'] = genre::getGenre();
        \Views\Renderer::render("home/home", $dataview);
    }
}