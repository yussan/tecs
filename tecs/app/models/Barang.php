<?php 

use Illuminate\Database\Eloquent\Model;

class Barang extends Eloquent{
	//list barang
	function listBarang($mainkategori='',$subkategori='',$filter='',$keyword='')
	{
		if(empty($_GET['limit'])){$limit=20;}else{$limit=$_GET['limit'];}//set limit
		$query = DB::table('barang')
			->select('barang.idBarang','barang.namaBarang','barang.harga','barang.diskon',
				'barang.berat','barang.stok',
				'barang.keterangan','barang.created_at','barang.updated_at','barang.gambar',
				'subkategori.idSubkategori','subkategori.namaSubkategori',
				'mainkategori.idKategori','mainkategori.namaKategori',
				'merk.namaMerk','merk.idMerk')
			->leftjoin('subkategori','subkategori.idSubkategori','=','barang.idSubKategori')
			->leftJoin('mainkategori','mainkategori.idKategori','=','subkategori.idKategori')
			->leftJoin('merk','merk.idMerk','=','barang.idMerk')
			->where(function($q) use($mainkategori,$subkategori,$keyword){//where
				if(!empty($keyword))$q->where('barang.namaBarang','like','%'.$keyword.'%');//do searching
				if(!empty($mainkategori))$q->where('mainkategori.namaKategori','=',$mainkategori);//filter by mainkategori
				if(!empty($subkategori))$q->where('subkategori.namaSubkategori','=',$subkategori);//filter by mainkategori and subkategori		
			})
			->where(function($q) use($filter){//order by
				if(!empty($filter))
				{
					switch ($filter) {
						case 'latest':
							$q->orderBy('barang.update_at','DESC');
							break;						
					}
				}
			})
			->orderBy('idBarang','DESC')
			->take($limit)
			->get();
		//parameter check
		if(count($query)>0){
			$kode=200;
			$message='list barang';
		}else{
			$kode=201;
			$message='barang kosong';
		}
		return [$kode,$message,$query];
	}
}