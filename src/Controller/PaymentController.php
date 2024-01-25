<?php

namespace App\Controller;

class PaymentController extends AbstractController
{
    public function successful()
    {

        $data = $_SESSION;

        return $this->twig->render('payment/successful.html.twig', ['data' => $data]);
    }
}
