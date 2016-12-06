<?php
class GalleryImage extends DataObject {
  private static $db = array(
    'SortOrder' => 'Int',
    'Title' => 'Text',
    );

  // One-to-one relationship with gallery page
  public static $has_one = array(
    'Image' => 'Image',
    'GalleryPage' => 'GalleryPage'	
  );

  // Tell the datagrid what fields to show in the table
   public static $summary_fields = array( 
       'ID' => 'ID',
	   'Title' => 'Title',
	   'Thumbnail' => 'Thumbnail'     
   );  
    
  public function getCMSFields(){
    $fields = parent::getCMSFields();
    $fields->removeFieldFromTab("Root.Main","GalleryPageID");
    $fields->removeFieldFromTab("Root.Main","SortOrder");
    return $fields;		  
  }

  // this function creates the thumnail for the summary fields to use
   public function getThumbnail() { 
     return $this->Image()->CMSThumbnail();
  }  
  
}
