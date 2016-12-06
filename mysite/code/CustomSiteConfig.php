<?php
class CustomSiteConfig extends DataExtension {

  /*
  public function extraStatics(){
  return array(
    'db' => array(
    'Phone' => 'Varchar(64)',
    'Address' => 'Varchar(64)',
    'Email' => 'Varchar(64)',
    'OpeningHours' => 'HTMLText',
    )
  );
  }
  */
  private static $db = array(    
    'MetaTitle' => 'Varchar(256)',
  );
  
  public function updateCMSFields(FieldList $fields){
      $fields->addFieldToTab('Root.Main',
	new TextareaField('MetaTitle', 'Meta Title')
      );
    
  }
}