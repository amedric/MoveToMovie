<?php

namespace App\Controller;

class PaymentController extends AbstractController
{
    public function successful(): string
    {
        return $this->twig->render('Payment/successful.html.twig');
    }
}
