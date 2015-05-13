<?php
// require_once();
class Admin extends BaseController{
	public function index(){
		$Data = array
		(
		'title'=>'Admin Login'
	);
	return $this->baseView('admin/login',$Data);
	}
}
?>
