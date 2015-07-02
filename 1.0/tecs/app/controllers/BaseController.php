<?php

class BaseController extends Controller {

	/**
	 * Setup the layout used by the controller.
	 *
	 * @return void
	 */
	protected function setupLayout()
	{
		if ( ! is_null($this->layout))
		{
			return $this->layout = View::make($this->layout);
		}
	}
	//base view
	public function baseView($ChildView="",$Data="")
	{
		$Data['ChildView'] = $ChildView;
		return $this->layout = View::make('bases/baseBody',$Data);
	}

}
