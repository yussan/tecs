<?php
// require_once();
class home extends BaseController{
	public function index(){
		return 'ini home';
	}
	//controler with parameter
	public function students($name){
		//get view
		$data = array('title'=>'School Of Coder','name'=>$name);
		return View::make('profile',$data);
	}
	//double parameter
	public function v($id,$name){
		return 'Id Barang = '.$id.'<br/>'.'Nama = '.$name;
	}
}
?>