<?php
// require_once();
class Home extends BaseController{
	public function index(){
		return 'ini home';
	}
	//controler with parameter
	public function students($name){
		//get view
		$data = array('title'=>'School Of Coder','name'=>$name);
		return View::make('profile',$data);
	}
	//test base view
	public function v($id,$name){
		return 'Id Barang = '.$id.'<br/>'.'Nama = '.$name;
	}
	//test base view
	public function welcome()
	{
	     $Data = array('title'=>'This Is Title','body'=>'this is body','footer'=>'this is footer');
	     return $this->baseView('welcome',$Data);
	}
}
?>
