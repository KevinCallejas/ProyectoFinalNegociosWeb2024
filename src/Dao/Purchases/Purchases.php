<?php
namespace Dao\Purchases; 
use Dao\Table; 
class Purchases extends Table{
    
  private $purchase_date;
  private $total;
  private $details;
  private $payments;

 
  public static function getPurchase(){
	 $sqlstr= "SELECT * FROM purchase";
        $params = [];
        $registros = self::obtenerRegistros($sqlstr, $params);
        return $registros;
	}

  public static function insertPurchase($id_purchase, $purchase_date, $total, $details, $payments){
	
    $sqlstr = "INSERT INTO purchase (id_purchase, purchase_date, total, details, payments) VALUES (:id_purchase , :purchase_date , :total , :details , :payments)";
    $params = ['id_purchase' => $id_purchase, 'purchase_date' => $purchase_date, 'total' => $total, 'details' => $details, 'payments' => $payments];
    $registros = self::executeNonQuery($sqlstr, $params);
    return $registros;

	}

  public static function updatePurchase($id_purchase, $purchase_date, $total, $details, $payments){
	
        $sqlstr = "UPDATE purchase SET id_purchase = :id_purchase, purchase_date = :purchase_date, total = :total, details = :details, payments = :payments WHERE id_purchase = :id_purchase";
        $params = ['id_purchase' => $id_purchase, 'purchase_date' => $purchase_date, 'total' => $total, 'details' => $details, 'payments' => $payments];
        $registros = self::executeNonQuery($sqlstr, $params);
        return $registros;
    
	}

 public static function obtenerPorId($id){
	 $sqlstr= "SELECT * FROM purchase WHERE id_purchase = :id";
        $params = ['id'=>$id];
        $registros = self::obtenerUnRegistro($sqlstr, $params);
        return $registros;
	}

 public static function deletePurchase($id){
	$sqlstr= "DELETE  FROM purchase WHERE id_purchase = :id";
        $params = ['id'=>$id];
        $registros = self::executeNonQuery($sqlstr, $params);
        return $registros;
	}
    
}