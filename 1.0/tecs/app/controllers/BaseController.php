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
		$this->M_member = new Member;
	}

	//base view
	public function baseView($ChildView="",$Data="")
	{
		$Data['ChildView'] = $ChildView;
		return $this->layout = View::make('bases/baseBody',$Data);
	}

	//API
	public function getRequest()
	{
	 return json_decode(file_get_contents("php://input"));
	}
	public function getRespond($status,$data)
	{
		$respond = array('status'=>$status,'data'=>$data);
		$json = json_encode($respond);
		return $json;
	}
}
