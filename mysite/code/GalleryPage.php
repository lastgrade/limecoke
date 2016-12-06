<?php
//
class GalleryPage extends Page {

  private static $has_many = array(
    'GalleryImages' => 'GalleryImage',
  );
  
  //private static $icon = GALLERY_ICON_PATH;
  
 
  public function getCMSFields(){
    $fields = parent::getCMSFields();
    $gridFieldConfig = GridFieldConfig_RecordEditor::create(); 
    //$gridFieldConfig->addComponent(new GridFieldBulkEditingTools());
    $gridFieldConfig->addComponent(new GridFieldBulkImageUpload());   
    $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));    
    
    $gridfield = new GridField("GalleryImages", "Gallery Images", $this->GalleryImages()->sort("SortOrder"), $gridFieldConfig);
			    
    $fields->addFieldToTab('Root.GalleryImages', $gridfield);
	
    
    return $fields;
  }
  //*/

}
  

class GalleryPage_Controller extends Page_Controller {
  private static $allowed_actions = array();		
  
  public function init(){
      parent::init();
      Requirements::css( PROJECT_DIR . '/thirdparty/colorbox/colorbox.css',    'screen,projection'    );
      Requirements::javascript(   PROJECT_DIR . '/thirdparty/colorbox/jquery.colorbox-min.js'    );
      $js =
      <<<JS
    $(document).ready(function(){
    $("a[rel='gallery']").colorbox();
    });
JS;
	Requirements::customScript($js);
    }
    
	public function getGalleryImages() {
	  return $this->GalleryImages()->sort("SortOrder");
	}
	
}

  