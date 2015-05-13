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
			$this->layout = View::make($this->layout);
		}
	}
	//base view
	public function baseView($ChildView="",$Data="")
	{
		// $Data['ChildView'] = $ChildView;
		echo View::make('bases/baseHeader',$Data);
		echo View::make($ChildView,$Data);
		echo View::make('bases/baseFooter',$Data);
		// return $View;//get nested view
		// return View::make('bases/baseBody',$Data);
	}

}
