<?php
namespace Dao\Songauthorss; 
use Dao\Table; 
class Songauthorss extends Table{
      private $artist_id;
  private $song_id;
  private $song_author_created_at;
  private $song_author_last_update_at;

 
  public static function getSongauthors(){
	 $sqlstr= "SELECT * FROM songauthors";
        $params = [];
        $registros = self::obtenerRegistros($sqlstr, $params);
        return $registros;
	}

  public static function insertSongauthors($artist_id, $song_id, $song_author_created_at, $song_author_last_update_at){
	
    $sqlstr = "INSERT INTO songauthors (artist_id, song_id, song_author_created_at, song_author_last_update_at) VALUES (:artist_id , :song_id , :song_author_created_at , :song_author_last_update_at)";
    $params = ['artist_id' => $artist_id, 'song_id' => $song_id, 'song_author_created_at' => $song_author_created_at, 'song_author_last_update_at' => $song_author_last_update_at];
    $registros = self::executeNonQuery($sqlstr, $params);
    return $registros;

	}

  public static function updateSongauthors($artist_id, $song_id, $song_author_created_at, $song_author_last_update_at){
	
        $sqlstr = "UPDATE songauthors SET artist_id = :artist_id, song_id = :song_id, song_author_created_at = :song_author_created_at, song_author_last_update_at = :song_author_last_update_at WHERE  = :";
        $params = ['artist_id' => $artist_id, 'song_id' => $song_id, 'song_author_created_at' => $song_author_created_at, 'song_author_last_update_at' => $song_author_last_update_at];
        $registros = self::executeNonQuery($sqlstr, $params);
        return $registros;
    
	}

 public static function obtenerPorId($id){
	 $sqlstr= "SELECT * FROM songauthors WHERE  = :id";
        $params = ['id'=>$id];
        $registros = self::obtenerUnRegistro($sqlstr, $params);
        return $registros;
	}

 public static function deleteSongauthors($id){
	$sqlstr= "DELETE  FROM songauthors WHERE  = :id";
        $params = ['id'=>$id];
        $registros = self::executeNonQuery($sqlstr, $params);
        return $registros;
	}
    
}