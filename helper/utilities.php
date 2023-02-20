<?php

function getTableDataByTableName($table, $order = 'asc', $column='id', $dataType = '') {
    global $conn;
    $dataContainer  =   [];
    $sql = "SELECT * FROM $table order by $column $order";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        if (isset($dataType) && $dataType == 'obj') {
            while ($row = $result->fetch_object()) {
                $dataContainer[] = $row;
            }
        } else {
            while ($row = $result->fetch_assoc()) {
                $dataContainer[] = $row;
            }
        }
    }
    return $dataContainer;
}
function getTableDataByTableNameWid($table, $order = 'asc', $column='id', $dataType = '') {
    global $conn;
	$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
    $dataContainer  =   [];
    $sql = "SELECT * FROM $table WHERE warehouse_id=$warehouse_id order by $column $order";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        if (isset($dataType) && $dataType == 'obj') {
            while ($row = $result->fetch_object()) {
                $dataContainer[] = $row;
            }
        } else {
            while ($row = $result->fetch_assoc()) {
                $dataContainer[] = $row;
            }
        }
    }
    return $dataContainer;
}

function getTableDataByTableNameTid($table, $order = 'asc', $column='id', $dataType = '') {
    global $conn;
	$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
    $dataContainer  =   [];
    $sql = "SELECT * FROM $table WHERE from_warehouse=$warehouse_id OR to_warehouse=$warehouse_id order by $column $order";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        if (isset($dataType) && $dataType == 'obj') {
            while ($row = $result->fetch_object()) {
                $dataContainer[] = $row;
            }
        } else {
            while ($row = $result->fetch_assoc()) {
                $dataContainer[] = $row;
            }
        }
    }
    return $dataContainer;
}

function saveData($table, $dataParam) {
    global $conn;
    $fields_array   =   array_keys($dataParam);   
    $fields         =   implode(',', array_keys($dataParam));
    $values         =   "'" . implode ( "', '", array_values($dataParam) ) . "'";
    $sql            = "INSERT INTO $table ($fields) VALUES ($values)";

    if ($conn->query($sql) === TRUE) {
        $feedbackData   =   [
            'status'    =>  'success',
            'data'      =>  'Data have been successfully inserted',
            'last_id'   =>  $conn->insert_id,
        ];
        return $feedbackData;
    } else {
        $feedbackData   =   [
            'status'    =>  'error',
            'data'      =>  "Error: " . $sql . "<br>" . $conn->error,
            'last_id'   =>  '',
        ];
        return $feedbackData;
    }
}

function getwarehouseinfo($table, $order = 'asc', $column='id', $dataType = '') {
    global $conn;
    $dataContainer  =   [];
    $sql = "SELECT * FROM $table WHERE `short_name` !='CW' order by $column $order";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        if (isset($dataType) && $dataType == 'obj') {
            while ($row = $result->fetch_object()) {
                $dataContainer[] = $row;
            }
        } else {
            while ($row = $result->fetch_assoc()) {
                $dataContainer[] = $row;
            }
        }
    }
    return $dataContainer;
}

function getMaterialNameByIdAndTable($table){
    global $conn;
    $sql = "SELECT * FROM $table";
    $result = $conn->query($sql);
    $name   =   '';
    if ($result->num_rows > 0) {
        $name   =   $result->fetch_object()->material_description;
    }
    return $name;
}

function getNameByIdAndTable($table){
    global $conn;
    $sql = "SELECT * FROM $table";
    $result = $conn->query($sql);
    $name   =   '';
    if ($result->num_rows > 0) {
        $name   =   $result->fetch_object()->name;
    }
    return $name;
}

function getItemCodeByParam($table, $field){
    global $conn;
    $sql = "SELECT * FROM $table";
    $result = $conn->query($sql);
    $name   =   '';
    if ($result->num_rows > 0) {
        $name   =   $result->fetch_object()->{$field};
    }
    return $name;
}

function getDataRowIdAndTable($table){
    global $conn;
    $sql = "SELECT * FROM $table";
    $result = $conn->query($sql);
    $name   =   '';
    if ($result->num_rows > 0) {
        return $result->fetch_object();
    }
}

function getDataRowByTableAndId($table, $id){
    global $conn;
    $sql    = "SELECT * FROM $table where id=".$id;
    $result = $conn->query($sql);
    $name   =   '';
    if ($result->num_rows > 0) {
        return $result->fetch_object();
    }else{
        return false;
    }
}
function getDefaultCategoryCode($table, $fieldName, $modifier, $defaultCode, $prefix){
    global $conn;
    $sql    = "SELECT count($fieldName) as total_row FROM $table";
    $result = $conn->query($sql);
    $name   =   '';
    $lastRows   = $result->fetch_object();
    $number     = intval($lastRows->total_row) + 1;
    $defaultCode = $prefix.sprintf('%'.$modifier, $number);
    return $defaultCode;
    
}


function getDefaultCategoryCodeByWarehouse($table, $fieldName, $modifier, $defaultCode, $prefix){
    global $conn;
	$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
    $sql    	= "SELECT count($fieldName) as total_row FROM $table WHERE warehouse_id=$warehouse_id";
    $result 	= $conn->query($sql);
    $name   	=   '';
    $lastRows   = $result->fetch_object();
    $number     = intval($lastRows->total_row) + 1;
    $defaultCode = $prefix.sprintf('%'.$modifier, $number);
    return $defaultCode;
    
}

function getDefaultCategoryCodeByWarehouseT($table, $fieldName, $modifier, $defaultCode, $prefix){
    global $conn;
	$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
    $sql    	= "SELECT count($fieldName) as total_row FROM $table WHERE from_warehouse=$warehouse_id";
    $result 	= $conn->query($sql);
    $name   	=   '';
    $lastRows   = $result->fetch_object();
    $number     = intval($lastRows->total_row) + 1;
    $defaultCode = $prefix.sprintf('%'.$modifier, $number);
    return $defaultCode;
    
}

function getDefaultCategoryCodeByWarehousePT($table, $fieldName, $modifier, $defaultCode, $prefix){
    global $conn;
	$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
    $sql    	= "SELECT count($fieldName) as total_row FROM $table WHERE to_warehouse=$warehouse_id";
    $result 	= $conn->query($sql);
    $name   	=   '';
    $lastRows   = $result->fetch_object();
    $number     = intval($lastRows->total_row) + 1;
    $defaultCode = $prefix.sprintf('%'.$modifier, $number);
    return $defaultCode;
    
}

function getDefaultCategoryCodeByProjectT($table, $fieldName, $modifier, $defaultCode, $prefix){
    global $conn;
	$project_id	=	$_SESSION['logged']['project_id'];
    $sql    	= "SELECT count($fieldName) as total_row FROM $table WHERE from_project=4";
    $result 	= $conn->query($sql);
    $name   	=   '';
    $lastRows   = $result->fetch_object();
    $number     = intval($lastRows->total_row) + 1;
    $defaultCode = $prefix.sprintf('%'.$modifier, $number);
    return $defaultCode;
    
}

function getDefaultCategoryCodeByPort($table, $fieldName, $modifier, $defaultCode, $prefix){
    global $conn;
	$port_id	=	$_SESSION['logged']['port_id'];
    $sql    	= "SELECT count($fieldName) as total_row FROM $table WHERE from_port=$port_id";
    $result 	= $conn->query($sql);
    $name   	=   '';
    $lastRows   = $result->fetch_object();
    $number     = intval($lastRows->total_row) + 1;
    $defaultCode = $prefix.sprintf('%'.$modifier, $number);
    return $defaultCode;
    
}

function get_product_with_category() {
    $final_array = [];
    global $conn;
    $sql = "SELECT * FROM `inv_materialcategorysub` order by category_description asc";
    $presult = $conn->query($sql);
    if ($presult->num_rows > 0) {
        // output data of each row
        while ($cat = $presult->fetch_object()) {
            $parent_id      = $cat->id;
            $parent_name    = $cat->category_description;
            $ssql           = "SELECT * FROM `inv_materialcategory` where `category_id`=$parent_id order by `material_sub_description` asc";
            $sresult        = $conn->query($ssql);
            if ($sresult->num_rows > 0) {
                while ($scat = $sresult->fetch_object()) {
                    $sub_item_id    = $scat->id;
                    $sub_item_name  = $scat->material_sub_description;
                    $msql           = "SELECT * FROM `inv_material` where `material_id`=$parent_id and `material_sub_id`=$sub_item_id order by `material_description` asc";
                    $mresult = $conn->query($msql);
                    if ($mresult->num_rows > 0) {
                        while ($material    = $mresult->fetch_object()) {
                            $final_array[]  = [
                                'id'                    => $material->id,
                                'parent_item_id'        => $material->material_id,
                                'sub_item_id'           => $material->material_sub_id,
                                'item_code'             => $material->material_id_code,
                                'material_name'         => $material->material_description.' ('.$parent_name.' - '.$sub_item_name.')',
                            ];
                        }
                    }
                }
            }
        }
    }
    return $final_array;
}

function isDuplicateData($table, $where, $notWhere=''){
    global $conn;
    $sql='';
    $sql.="SELECT * FROM $table where $where ";
    if(isset($notWhere) && !empty($notWhere)){
        $sql.=" And $notWhere";
    }
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        return true;
    }
    return false;
}

function stockReportCheck() {
    $dataContainer = [];
    global $conn;
    $sql = "SELECT mb_materialid, (SUM(mbin_qty)-SUM(mbout_qty)) as BalanceQty, (SUM(mbin_val)-SUM(mbout_val)) as BalanceVal  FROM `inv_materialbalance` GROUP BY mb_materialid";
	
    /* $sql = "SELECT mb_materialid, (SUM(mbin_qty)-SUM(mbout_qty)) as BalanceQty, (SUM(mbin_val)-SUM(mbout_val)) as BalanceVal  FROM `inv_materialbalance` WHERE `approval_status`='1' GROUP BY mb_materialid"; */
	
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_object()) {
            $dataContainer[] = $row;
        }
    }
    return $dataContainer;
}
function getTotalstockInOutQuantityCheck($mid, $type) {
    $TOTAL = 0;
    global $conn;
    if($type    ==  'in'){
        $sql = "SELECT SUM(mbin_qty) as Total  FROM `inv_materialbalance` WHERE mb_materialid='$mid'";
        /* $sql = "SELECT SUM(mbin_qty) as Total  FROM `inv_materialbalance` WHERE mb_materialid='$mid' AND `approval_status`='1'"; */
    }
    if($type    ==  'out'){
        $sql = "SELECT SUM(mbout_qty) as Total  FROM `inv_materialbalance` WHERE mb_materialid='$mid'";
       /*  $sql = "SELECT SUM(mbout_qty) as Total  FROM `inv_materialbalance` WHERE mb_materialid='$mid' AND `approval_status`='1'"; */
    }
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $TOTAL = $result->fetch_object()->Total;
    }
    return $TOTAL;
}
function get_product_stock_by_material_id($param) {
    //default value:
    $totalStock =   0;
    // opening quantity:
    $opeingQuantityData     =   get_material_balance_opening_quantity($param);
    $openingQuantity        =   (isset($opeingQuantityData->openingMbInTotal) && !empty($opeingQuantityData->openingMbInTotal) ? $opeingQuantityData->openingMbInTotal : 0);
    
    // recieving quantity:
    $receivingQuantityData  =   get_material_balance_receiving_quantity($param);
    $receivingQuantity      =   (isset($receivingQuantityData->receivingMbInTotal) && !empty($receivingQuantityData->receivingMbInTotal) ? $receivingQuantityData->receivingMbInTotal : 0);
    
    // issue quantity:
    $issueQuantityData      =   get_material_balance_issue_quantity($param);
    $issueQuantity          =   (isset($issueQuantityData->issueMbOutTotal) && !empty($issueQuantityData->issueMbOutTotal) ? $issueQuantityData->issueMbOutTotal : 0);
    
    // transfer_out quantity:
    $transfer_outQuantityData      =   get_material_balance_transfer_out_quantity($param);
    $transfer_outQuantity          =   (isset($transfer_outQuantityData->transferOutMbOutTotal) && !empty($transfer_outQuantityData->transferOutMbOutTotal) ? $transfer_outQuantityData->transferOutMbOutTotal : 0);
    
    // transfer_out quantity:
    $transfer_inQuantityData      =   get_material_balance_transfer_in_quantity($param);
    $transfer_inQuantity          =   (isset($transfer_inQuantityData->transferInMbInTotal) && !empty($transfer_inQuantityData->transferInMbInTotal) ? $transfer_inQuantityData->transferInMbInTotal : 0);
    
    $totalIn    =   ($openingQuantity + $receivingQuantity + $transfer_inQuantity);
    $totalOut   =   ($issueQuantity + $transfer_outQuantity);
    
    $totalStock     =   $totalIn - $totalOut;
    return $totalStock;
}
/*
 * Method for get opeing total data
 * $param
 * 1. mb_materialid
 * 2. warehouse_id
 */
function get_material_balance_opening_quantity($param){
    global $conn;
    $rowData    =   '';
    $mb_materialid  =   $param['mb_materialid'];
    $warehouse_id   =   $param['warehouse_id'];
    $sql            =   "SELECT mb_materialid,"
            . " sum(mbin_qty) as openingMbInTotal,"
            . " sum(mbout_qty) as openingMbOutTotal,"
            . " mbin_qty, mbin_val,"
            . " mbout_qty,"
            . " mbout_val,"
            . " mbprice FROM inv_materialbalance WHERE mb_materialid = '$mb_materialid'"
            . " AND warehouse_id='$warehouse_id'"
            /* . " AND `approval_status`='1'" */
            . " AND mbtype='OP'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $rowData = $result->fetch_object();
    }
    return $rowData;
}

/*
 * Method for get receiving total data
 * $param
 * 1. mb_materialid
 * 2. warehouse_id
 */
function get_material_balance_receiving_quantity($param){
    global $conn;
    $rowData    =   '';
    $mb_materialid  =   $param['mb_materialid'];
    $warehouse_id   =   $param['warehouse_id'];
    $sql            =   "SELECT mb_materialid,"
            . " sum(mbin_qty) as receivingMbInTotal,"
            . " sum(mbout_qty) as receivingMbOutTotal,"
            . " mbin_qty, mbin_val,"
            . " mbout_qty,"
            . " mbout_val,"
            . " mbprice FROM inv_materialbalance WHERE mb_materialid = '$mb_materialid'"
            . " AND warehouse_id='$warehouse_id'"
            /* . " AND `approval_status`='1'" */
            . " AND mbtype='Receive'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $rowData = $result->fetch_object();
    }
    return $rowData;
}

/*
 * Method for get Issue total data
 * $param
 * 1. mb_materialid
 * 2. warehouse_id
 */
function get_material_balance_issue_quantity($param){
    global $conn;
    $rowData    =   '';
    $mb_materialid  =   $param['mb_materialid'];
    $warehouse_id   =   $param['warehouse_id'];
    $sql            =   "SELECT mb_materialid,"
            . " sum(mbin_qty) as issueMbInTotal,"
            . " sum(mbout_qty) as issueMbOutTotal,"
            . " mbin_qty, mbin_val,"
            . " mbout_qty,"
            . " mbout_val,"
            . " mbprice FROM inv_materialbalance WHERE mb_materialid = '$mb_materialid'"
            . " AND warehouse_id='$warehouse_id'"
            /* . " AND `approval_status`='1'" */
            . " AND mbtype='Issue'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $rowData = $result->fetch_object();
    }
    return $rowData;
}

/*
 * Method for get Transfer Out total data
 * $param
 * 1. mb_materialid
 * 2. warehouse_id
 */
function get_material_balance_transfer_out_quantity($param){
    global $conn;
    $rowData    =   '';
    $mb_materialid  =   $param['mb_materialid'];
    $warehouse_id   =   $param['warehouse_id'];
    $sql            =   "SELECT mb_materialid,"
            . " sum(mbin_qty) as transferOutMbInTotal,"
            . " sum(mbout_qty) as transferOutMbOutTotal,"
            . " mbin_qty, mbin_val,"
            . " mbout_qty,"
            . " mbout_val,"
            . " mbprice FROM inv_materialbalance WHERE mb_materialid = '$mb_materialid'"
            . " AND warehouse_id='$warehouse_id'"
            /* . " AND `approval_status`='1'" */
            . " AND mbtype='Transfer Out'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $rowData = $result->fetch_object();
    }
    return $rowData;
}

/*
 * Method for get Transfer In total data
 * $param
 * 1. mb_materialid
 * 2. warehouse_id
 */
function get_material_balance_transfer_in_quantity($param){
    global $conn;
    $rowData    =   '';
    $mb_materialid  =   $param['mb_materialid'];
    $warehouse_id   =   $param['warehouse_id'];
    $sql            =   "SELECT mb_materialid,"
            . " sum(mbin_qty) as transferInMbInTotal,"
            . " sum(mbout_qty) as transferInMbOutTotal,"
            . " mbin_qty, mbin_val,"
            . " mbout_qty,"
            . " mbout_val,"
            . " mbprice FROM inv_materialbalance WHERE mb_materialid = '$mb_materialid'"
            . " AND warehouse_id='$warehouse_id'"
            /* . " AND `approval_status`='1'" */
            . " AND mbtype='Transfer In'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $rowData = $result->fetch_object();
    }
    return $rowData;
}

function convertNumberToWords($number){
		//A function to convert numbers into readable words with Cores, Lakhs and Thousands.
		$words = array(
		'0'		=> '' ,
		'1'		=> 'one' ,
		'2'		=> 'two' ,
		'3' 	=> 'three',
		'4' 	=> 'four',
		'5' 	=> 'five',
		'6' 	=> 'six',
		'7' 	=> 'seven',
		'8' 	=> 'eight',
		'9' 	=> 'nine',
		'10' 	=> 'ten',
		'11' 	=> 'eleven',
		'12' 	=> 'twelve',
		'13' 	=> 'thirteen',
		'14' 	=> 'fouteen',
		'15' 	=> 'fifteen',
		'16' 	=> 'sixteen',
		'17' 	=> 'seventeen',
		'18' 	=> 'eighteen',
		'19' 	=> 'nineteen',
		'20' 	=> 'twenty',
		'30' 	=> 'thirty',
		'40' 	=> 'fourty',
		'50' 	=> 'fifty',
		'60' 	=> 'sixty',
		'70' 	=> 'seventy',
		'80' 	=> 'eighty',
		'90' 	=> 'ninty');
		
		//First find the length of the number
		$number_length = strlen($number);
		//Initialize an empty array
		$number_array = array(0,0,0,0,0,0,0,0,0);        
		$received_number_array = array();
		
		//Store all received numbers into an array
		for($i=0;$i<$number_length;$i++){    
			$received_number_array[$i] = substr($number,$i,1);    
		}
		//Populate the empty array with the numbers received - most critical operation
		for($i=9-$number_length,$j=0;$i<9;$i++,$j++){ 
			$number_array[$i] = $received_number_array[$j]; 
		}
		$number_to_words_string = "";
		//Finding out whether it is teen ? and then multiply by 10, example 17 is seventeen, so if 1 is preceeded with 7 multiply 1 by 10 and add 7 to it.
		for($i=0,$j=1;$i<9;$i++,$j++){
			//"01,23,45,6,78"
			//"00,10,06,7,42"
			//"00,01,90,0,00"
			if($i==0 || $i==2 || $i==4 || $i==7){
				if($number_array[$j]==0 || $number_array[$i] == "1"){
					$number_array[$j] = intval($number_array[$i])*10+$number_array[$j];
					$number_array[$i] = 0;
				}
				   
			}
		}
		$value = "";
		for($i=0;$i<9;$i++){
			if($i==0 || $i==2 || $i==4 || $i==7){    
				$value = $number_array[$i]*10; 
			}
			else{ 
				$value = $number_array[$i];    
			}            
			if($value!=0)         {    $number_to_words_string.= $words["$value"]." "; }
			if($i==1 && $value!=0){    $number_to_words_string.= "Crore "; }
			if($i==3 && $value!=0){    $number_to_words_string.= "Lakh ";    }
			if($i==5 && $value!=0){    $number_to_words_string.= "Thousand "; }
			if($i==6 && $value!=0){    $number_to_words_string.= "Hundred "; }            
		}
		if($number_length>9){ $number_to_words_string = "Sorry This does not support more than 99 Crores"; }
		return ucwords(strtolower($number_to_words_string));
	}