<?php
class ContactPage extends Page {
  private static $db = array(
    'Mailto' => 'Varchar(100)',
    'SubmitText' => 'HTMLText',
  );
  public function getCMSFields(){
    $fields = parent::getCMSFields();
    $fields->addFieldToTab(  "Root.Main",  new EmailField('Mailto', 'Recipient')      );
    $fields->addFieldToTab(  "Root.Main",new HTMLEditorField(  'SubmitText',  'Text after sending the message'  )      );
    return $fields;
  }
  
}

class ContactPage_Controller extends Page_Controller {
  private static $allowed_actions = array('sent','Form',);
  
  public function Form(){
    define('SPAN', '<span class="required" style="background-color:#FFFFFF;">*</span>');
    
    $firstName = new TextField('FirstName', 'First name' . SPAN);
    $firstName->addExtraClass('rounded');   

    
    $email = new EmailField('Email', 'Email address' . SPAN);
    $email->addExtraClass('rounded');
    
    $phone = new TextField('Phone', 'Phone number');
    $phone->addExtraClass('rounded');
    $comment = new TextareaField('Comment','Message' . SPAN);
    $comment->addExtraClass('rounded');
    $fields = new FieldList(    $firstName,   $email,  $phone,   $comment    );
    $send = new FormAction('sendemail', 'Send');
    $send->addExtraClass('rounded');
    $actions = new FieldList(    $send    );
    $validator = new RequiredFields(    'Email',    'Comment',    'FirstName'       );
    return new Form($this, 'Form', $fields, $actions, $validator);
  }


  public function sendemail($data, $form){
    if(!empty($this->Mailto)){
      $email = $this->Mailto;
    } else {
      $email = EMAIL;
    }
    $from = $data['Email'];
    $to = $email;
    $subject = "Contact Form - LimeCoke";
    $email = new Email($from, $to, $subject);
    $email->setTemplate('ContactEmail');
    $email->populateTemplate($data);
    $email->send();
    $this->redirect($this->Link('sent'));
  }
  
  public function sent(){
    //return array();
   return    $this->render();
  }
  

  protected function IsSuccess(){ 
    $url = $this->urlParams;
    return (isset($url['Action']) && ($url['Action'] == 'sent'));
  }
  
}







