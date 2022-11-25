<?php

namespace App\Controller;

use App\Model\HomeManager;

class HomeController extends AbstractController
{
    /**
     * Display home page
     */
    public function index(): string
    {
        $movieImg = new HomeManager();
        $img = $movieImg->selectAll();
        $imgLocations = $movieImg->selectAllLocation();


        return $this->twig->render('Home/index.html.twig', [
            'movies' => $img,
            'imgLocations' => $imgLocations]);
    }
}
