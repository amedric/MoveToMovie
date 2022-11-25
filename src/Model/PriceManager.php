<?php

namespace App\Model;
use PDO;

class PriceManager extends AbstractManager
{
    public function showPriceById(int $id)
    {
        // prepared request
        $statement = $this->pdo->prepare("SELECT price FROM package p INNER JOIN location l ON l.id=p.location_id WHERE l.id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch();
    }
}
