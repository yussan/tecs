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
        if(empty($urisegment[2])){$action='list';}
        else{$action = $urisegment[2];}
        //do action
        switch($action)
        {
            case 'list':
                if(!empty($_GET['q']))
                {
                    return $this->getRespond($this->M_barang->listBarang('','','',$_GET['q']));
                }else{
                    return $this->getRespond($this->M_barang->listBarang());
                }
            break;
            case 'kategori':
                //mainkategori
                $mainkategori = $urisegment[3];
                //subkategori
                if(empty($urisegment[4])){$subkategori='';}else{$subkategori=$urisegment[4];}
                //is do searching
                if($_GET['q'])
                {
                    return $this->getRespond($this->M_barang->listBarang($mainkategori,$subkategori,'',$_GET['q']));
                }else{
                    return $this->getRespond($this->M_barang->listBarang($mainkategori,$subkategori));
                }
            break;
            case 'latest'://order by latest item
                return $this->getRespond($this->M_barang->listBarang('','','latest'));
            break;
            default :
                $kode = 404;//no content
                $data = 'not found';
                return $this->getRespond([$kode,$data]);
                break;
            }        
        }
    }
