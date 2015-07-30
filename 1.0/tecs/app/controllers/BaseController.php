<?php

class BaseController extends Controller {

	/**
	 * Setup the layout used by the controller.
	 *
	 * @return void
	 */
	
	// BASE FUNCTION
	
	//base view
	public function baseView($ChildView="",$Data="")
	{
		$Data['ChildView'] = $ChildView;
		return $this->layout = View::make('bases/baseBody',$Data);
	}

	//API

	//api key checker
	public function apiKeyChecker($apikey)
	{
		
	}

}
