<?php

namespace App\Controller;

class LocationController extends AbstractController
{
    /**
     * Display home page
     */
    public function location(): string
    {
        return $this->twig->render('location.html.twig');
    }
}