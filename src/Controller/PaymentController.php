<?php

namespace App\Controller;

class PaymentController extends AbstractController
{
    public function successful(): string
    {
        return $this->twig->render('payment/successful.html.twig');
    }
}
