<?php

namespace App\Model;

use PDO;

class LocationManager extends AbstractManager
{
    public function showLocationById(int $id)
    {
        // prepared request
        $statement = $this->pdo->prepare(
            "SELECT p.package_id,
       p.hotel_name,
       p.price,
       p.activities,
       p.picture1,
       p.picture2,
       p.picture3,
       l.location_id,
       l.country,
       l.city,
       l.fictive_city,
       l.location_img,
       l.movie_id,
       m.movie_id,
       m.name,
       m.movie_img
FROM movie m
         JOIN location l on m.movie_id = l.movie_id
    JOIN package p on l.location_id = p.location_id
WHERE l.location_id = :id"
        );
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch();
    }
}
