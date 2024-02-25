<?php
/**

 * PHP version 8.2.4
 *
 * @Date 22/08/23
 * @Last Update 20/2/24
 * Updated by Skuul2candly
 * Issue Number : 23
 * Ticket Number : 23
 * Changes Approved on 20/2/24
 * Tested by Skullcanldy
 * Description: 
	This is the first documentation commit
 * Disclosure Agreement: 
	Keep this information in secret
 * Last changes done: 
	Documentation Added
	
 * @author     SkullCanldy
 * @link       https://www.php.net/docs.php
 */

namespace Controllers\Playlists;

use Controllers\PrivateController;
use Views\Renderer;
use Dao\Playlists\Playlists as DAOPlaylist;
use Utilities\Site;
use Utilities\Validators;
use Utilities\Context;
use Utilities\Paging;

class Playlist extends PrivateController
{
    private $id_playlist;
    private $playlist_name;
    private $playlist_description;
    private $playlist_image;
    private $playlist_create_at;
    private $playlist_status;
    private $usercod;

    public function run(): void
    {
        Site::addLink('playlist_style');
        $viewData['id_playlist'] = 'id_playlist';
        $viewData['playlist_name'] = 'playlist_name';
        $viewData['playlist_description'] = 'playlist_description';
        $viewData['playlist_image'] = 'playlist_image';
        $viewData['playlist_create_at'] = 'playlist_create_at';
        $viewData['playlist_status'] = 'playlist_status';
        $viewData['usercod'] = 'usercod';
        if (\Dao\Security\Security::userIs($_SESSION['useremail'], 'ADMIN')) {
            if (\Utilities\Functions::isAnEmptyArray($viewData['playlist'] = DAOPlaylist::getPlaylist()))   {
                $viewData['isEmpty'] = true; 
            }
            else{
                $viewData['isEmpty'] = false;
            }
        } else {
            if (\Utilities\Functions::isAnEmptyArray($viewData['playlist'] = DAOPlaylist::getPlaylistByUser(\Dao\Security\Security::getCodigoByEmail($_SESSION['useremail']))))   {
                $viewData['isEmpty'] = true; 
            }
            else{
                $viewData['isEmpty'] = false;
            }
            
        }
        $viewData['isCLN'] = \Dao\Security\Security::userIs($_SESSION['useremail'], 'CLN');
        $viewData['isCLS'] = \Dao\Security\Security::userIs($_SESSION['useremail'], 'CLS');
        $viewData['isADMIN'] = \Dao\Security\Security::userIs($_SESSION['useremail'], 'ADMIN');
        $viewData['isAUDIT'] = \Dao\Security\Security::userIs($_SESSION['useremail'], 'AUDIT');
        Renderer::render("playlists/playlistlist", $viewData);
    }
}