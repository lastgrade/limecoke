<?php
class Slider extends DataObject{
	#code
	private static $db = array(
		//'Caption' => 'Varchar(255)',		
		'SortOrder' => 'Int'
	);
	
	private static $has_one = array(
		'Photo' => 'Image',
		'Page' => 'Page'
	);

	public static $default_sort = 'SortOrder ASC';
	
	private static $summary_fields = array(
	  'Photo.CMSThumbnail' => 'Slide Image'
	);	
	
	public function getCMSFields(){
		$fields = parent::getCMSFields();
		
		$fields->removeByName('SortOrder');
		
		//$fields->addFieldToTab('Root.Main',  new TextField('Caption','Title'));		
			
		$fields->addFieldToTab(
			'Root.Main',    
			$uploadField = new UploadField(
				$name = 'Photo',
				$title = 'Slider Image(1520×400)'
			),
			'PageID'
		);		
		
		return $fields;

	}
	
}

