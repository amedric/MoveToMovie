<?php

namespace App\Controller;

class FormController extends AbstractController
{
    public function form(): string
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $_SESSION = $_POST;

            header('Location: https://buy.stripe.com/test_4gw29Vbty4GCedi002');
        }
        return $this->twig->render('Form/form.html.twig');
    }
}
