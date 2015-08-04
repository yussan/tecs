<?php
//API for public and member
// require_once();
class APIController extends BaseController{
    /*FOR USER*/
    //LOGIN USER
    public function login()
    {
        return 'work';
    }
    //REGISTER USER
    public function register()
    {

    }

    /*FOR BARANG*/
    public function barang()
    {
        $req = $this->getRequest();//get json request
        //get type request data
        //type (list,lattest,bestbuy,favorite,search,wishlist,diskusi,rate)
        $uri = Request::path();
        $urisegment = explode('/',$uri);
        //what's action
        if(empty($urisegment[2])) $action='list';
        else $action = $urisegment[2];
        //do action
        switch($action)
        {
            case 'list':
                $status = 'success';
                $data ='data';
                break;
            default :
                $status = 'error';
                $data = 'undefined';
                break;
        }
        return $this->getRespond($status,$data);
    }
}
