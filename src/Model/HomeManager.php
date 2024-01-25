<?php

namespace App\Model;
use App\Model\AbstractManager;

class HomeManager extends AbstractManager
{
    public function selectAll(string $orderBy = '', string $direction = 'ASC'): array
    {
        $query = 'SELECT movie_img, name, movie_id FROM movie';
        if ($orderBy) {
            $query .= ' ORDER BY ' . $orderBy . ' ' . $direction;
        }
        $statement = $this->pdo->query($query);

        return $statement->fetchAll();
    }

    public function selectAllLocation(): array
    {
        $query = 'SELECT * FROM location';
        $statement = $this->pdo->query($query);

        return $statement->fetchAll();

    }
}
