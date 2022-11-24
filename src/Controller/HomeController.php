<?php

namespace App\Controller;

class HomeController extends AbstractController
{
    /**
     * Display home page
     */
    public function index(): string
    {
        $movieList = [
          ['Star Wars', 'https://loremflickr.com/170/250/cat'],
          ['Game of Thrones', 'https://loremflickr.com/170/250/dog'],
        ['Lord of the Rings', 'https://loremflickr.com/170/250/horse'],
        ];

        return $this->twig->render('Home/index.html.twig', ['movies' => $movieList]);
    }
}
