<?php

namespace App\Controller;
use App\Model\PriceManager;

class PriceController extends AbstractController
{
    public function showPrice(): string
    {
        $price = new PriceManager();
        $id = $_GET['id'];
        $showPrice = $price->showPriceById($id);


        return $this->twig->render('/location.html.twig', ['price' => $showPrice]);
    }
}
