<?php

/**
 * Created by PhpStorm.
 * User: thomas
 * Date: 10/17/2015
 * Time: 7:01 PM
 */

class MyContactPage extends ContactFormPage {

}

class MyContactPage_Controller extends ContactFormPage_Controller {

    private static $allowed_actions = array (
        'Form','success'
    );

    public function Form() {
        return parent::Form()
            ->addFields(
                TextField::create("YourName","Your name"),
                EmailField::create("Email","Email"),
                TextField::create("Phone","Phone number"),
                TextareaField::create("Message","Message")
            )
            ->setSuccessURL($this->Link('success'))
            ->setRequiredFields(array(
                    'YourName' => 'Please fill your name',
                    'Email' => 'Please fill your email',
					'Phone' => 'Please fill your phone',
					'Message' => 'Please fill your Message'
                ))
            ->render();
    }

    public function success(){
        return array();
    }

    public function IsSuccess(){
        $action = $this->getAction();
        if($action=='success'){
            return true;
        }
        else{
            return false;
        }
    }

}