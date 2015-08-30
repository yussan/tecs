<?php 

class BaseController extends Controller {

	/**
	 * Setup the layout used by the controller.
	 *
	 * @return void
	 */
	//constructor
	public function __construct()
	{
		//models decalaration
		$this->M_barang = new Barang;
	}

	//base view
	public function baseView($ChildView="",$Data="")
	{
		\Blade::setRawTags('[[', ']]');
		\Blade::setContentTags('[[[', ']]]');
		\Blade::setEscapedContentTags('[[[', ']]]');
		$Data['ChildView'] = $ChildView;
		return $this->layout = View::make('bases/baseBody',$Data);
	}

	#API
	//is user logged in
	public function checkLogin()
	{
		
	}
	//generate meta
	public function generateMeta($kode,$type)
	{
		return array('kode'=>$kode,'type'=>$type);
	}
	public function getRequest()
	{
	 return json_decode(file_get_contents("php://input"));
	}
	public function getRespond($params)
	{
		$respond = array('kode'=>$params[0],'message'=>$params[1],'data'=>$params[2]);
		$json = json_encode($respond);
		return $json;
	}
}
