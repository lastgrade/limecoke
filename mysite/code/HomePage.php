<?php
class HomePage extends Page {

	private static $db = array(
	);

	private static $has_one = array(
	);

	private static $has_many = array(
		'Sliders' => 'Slider'
	);
	

	public function getCMSFields() {
		$fields = parent::getCMSFields();
  
		$fields->removeByName('BannerImage');
		
		$gridFieldConfig = GridFieldConfig_RecordEditor::create();
		if(class_exists('GridFieldSortableRows')){
			$gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
		}
		
		$gridField = new GridField("Sliders", "Sliders", $this->Sliders(), $gridFieldConfig);
		$fields->addFieldToTab('Root.Sliders', $gridField );
	  
		return $fields;
	}	
	
}
class HomePage_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();

	}
	
	protected function LatestProducts($limit = 3){
		$productHolder = ProductHolder::get()->First();
		//echo $productPage->ID; 
		return ($productHolder)? Product::get()->filter('ParentID',$productHolder->ID)->sort("RAND()")->limit($limit): false;
	}
	

}
