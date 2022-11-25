<?php

namespace App\Controller;

use App\Model\LocationManager;

class LocationController extends AbstractController
{
    public function showLocation(): string
    {
        $location = new LocationManager();
        $id = $_GET['id'];
        $showLocation = $location->showLocationById($id);
        $altPrice = $showLocation['price'] - 200;

        return $this->twig->render('/location.html.twig', ['location' => $showLocation, 'basePrice' => $altPrice]);
    }
}
