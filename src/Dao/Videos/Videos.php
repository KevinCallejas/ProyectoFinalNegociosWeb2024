<?php
  
namespace Dao\Videos;
/*El siguiente codigo se encarga de hacer las consultas CRUD para la clase del mismo nombre*/

use Dao\Table;

class Videos extends Table
{

        private $id_video;
        private $title_video;
        private $description_video;
        private $duration;
        private $video_cover;
        private $artist_id;
        private $status_video;
        private $link_video;


        public static function getVideo()
        {
                $sqlstr = "SELECT * FROM video";
                $params = [];
                $registros = self::obtenerRegistros($sqlstr, $params);
                return $registros;
        }

        public static function gettop()
        {
                $sqlstr = "SELECT *
                FROM video
                INNER JOIN artist ON video.artist_id = artist.id_artist
                LIMIT 6;
                ";
                $params = [];
                $registros = self::obtenerRegistros($sqlstr, $params);
                return $registros;
        }


        public static function insertVideo($id_video, $title_video, $description_video, $duration, $video_cover, $artist_id, $status_video, $link_video)
        {

                $sqlstr = "INSERT INTO video (id_video, title_video, description_video, duration, video_cover, artist_id, status_video, link_video) VALUES (:id_video , :title_video , :description_video , :duration , :video_cover , :artist_id , :status_video , :link_video)";
                $params = ['id_video' => $id_video, 'title_video' => $title_video, 'description_video' => $description_video, 'duration' => $duration, 'video_cover' => $video_cover, 'artist_id' => $artist_id, 'status_video' => $status_video, 'link_video' => $link_video];
                $registros = self::executeNonQuery($sqlstr, $params);
                return $registros;
        }

        public static function updateVideo($id_video, $title_video, $description_video, $duration, $video_cover, $artist_id, $status_video, $link_video)
        {

                $sqlstr = "UPDATE video SET id_video = :id_video, title_video = :title_video, description_video = :description_video, duration = :duration, video_cover = :video_cover, artist_id = :artist_id, status_video = :status_video, link_video = :link_video WHERE id_video = :id_video";
                $params = ['id_video' => $id_video, 'title_video' => $title_video, 'description_video' => $description_video, 'duration' => $duration, 'video_cover' => $video_cover, 'artist_id' => $artist_id, 'status_video' => $status_video, 'link_video' => $link_video];
                $registros = self::executeNonQuery($sqlstr, $params);
                return $registros;
        }

        public static function obtenerPorId($id)
        {
                $sqlstr = "SELECT * FROM video WHERE id_video = :id";
                $params = ['id' => $id];
                $registros = self::obtenerUnRegistro($sqlstr, $params);
                return $registros;
        }

        public static function deleteVideo($id)
        {
                $sqlstr = "DELETE  FROM video WHERE id_video = :id";
                $params = ['id' => $id];
                $registros = self::executeNonQuery($sqlstr, $params);
                return $registros;
        }
}