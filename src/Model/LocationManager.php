<?php

namespace App\Model;

use PDO;

class LocationManager extends AbstractManager
{
    public function showLocationById(int $id)
    {
        // prepared request
        $statement = $this->pdo->prepare(
            "SELECT p.id,
       p.hotel_name,
       p.price,
       p.activities,
       p.picture1,
       p.picture2,
       p.picture3,
       l.id,
       l.country,
       l.city,
       l.fictive_city,
       l.img,
       l.movie_id,
       m.id,
       m.name,
       m.img
FROM movie m
         JOIN location l on m.id = l.movie_id
    JOIN package p on l.id = p.location_id
WHERE l.id = :id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch();
    }
}
