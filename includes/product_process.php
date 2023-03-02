<?php
/*******************************************************************************
 * The following code will
 * There are a table to keet track on product data. The are following:
 * 1. inv_product (Store single row)      
 * *****************************************************************************
 */
if (isset($_POST['product_submit']) && !empty($_POST['product_submit'])) {
	
        $name			= $_POST['name'];
        //$mrr_no		= getDefaultCategoryCode('inv_receive', 'mrr_no', '03d', '001', 'MRR');
        $alert_qty		= $_POST['alert_qty'];
        $brand_id     	= $_POST['brand'];
        $type_id      	= $_POST['type'];
        $cat_id 		= $_POST['category'];
        $generic_name 	= $_POST['generic_name'];
        $rak_no       	= $_POST['rak_no'];
        $packing_mode   = $_POST['packing_mode'];
        $box_pics     	= $_POST['box_pics'];
        $free_per_box   = $_POST['free_per_box'];  
        $free_pics     	= $_POST['free_pics'];  
        $buy_price     	= $_POST['buy_price'];  
        $sale_price  	= $_POST['sale_price'];  
        $pics_sale     	= $_POST['pics_sale'];  
        $price_date   	= $_POST['price_date'];  
        $status     	= $_POST['status'];  
		
        $created_at  	= '';        
        $created_by  	= $_SESSION['logged']['user_id'];             
        $updated_at    	= '';    
        $updated_by   	= '';   
		
		
		/* if (is_uploaded_file($_FILES['sn_prt_image']['tmp_name'])) 
		{
			$temp_file=$_FILES['sn_prt_image']['tmp_name'];
			$mrr_image=time().$_FILES['sn_prt_image']['name'];
			$q = move_uploaded_file($temp_file,"images/".$mrr_image);
		}  */ 
		
		$query = "INSERT INTO `inv_product` (`type_id`,`brand_id`,`cat_id`,`name`,`alert_qty`,`rak_no`,`packing_mode`,`box_pics`,`free_per_box`,`free_pics`,`buy_price`,`sale_price`,`pics_sale`,`price_date`) VALUES ('$type_id','$brand_id','$cat_id','$name','$alert_qty','$rak_no','$packing_mode','$box_pics','$free_per_box','$free_pics','$buy_price','$sale_price','$pics_sale','$price_date')";
		
        $conn->query($query);
		
        /*  $mb_ref_id      = $mrr_no;
        $mb_materialid  = $material_id;
        $mb_date        = (isset($Purchase_date) && !empty($Purchase_date) ? date('Y-m-d h:i:s', strtotime($Purchase_date)) : date('Y-m-d h:i:s'));
        $mbin_qty       = $quantity;
        $mbin_val       = $totalamount;
        
        $query_inmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`mbserial`,`mbserial_id`,`mbunit_id`,`jvno`,`project_id`,`warehouse_id`,`approval_status`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbin_val','$mbout_qty','$mbout_val','$mbprice','$mbtype','$mbserial','$mbunit_id','$mbserial_id','$jvno','$project_id','$warehouse_id','$approval_status')";
        $conn->query($query_inmb); */
    
    
    $_SESSION['success']    =   "Receive process have been successfully completed.";
    header("location: product_entry.php");
    exit();
}

function getProductDataDetailsById($id){
    global $conn;
    $receieves      =   "";
    $receiveDetails =   "";
    
    // get receive data
    $sql1           = "SELECT * FROM inv_receive where id=".$id;
    $result1        = $conn->query($sql1);

    if ($result1->num_rows > 0) {
        $receieves = $result1->fetch_object();
        // get receive details data
        $table                  =   'inv_receivedetail where mrr_no='."'$receieves->mrr_no'";
        $order                  =   'DESC';
        $column                 =   'receive_qty';
        $dataType               =   'obj';
        $receiveDetailsData     = getTableDataByTableName($table, $order, $column, $dataType);
        if(isset($receiveDetailsData) && !empty($receiveDetailsData)){
            $receiveDetails     =   $receiveDetailsData;
        }
    }
    $feedbackData   =   [
        'receiveData'           =>  $receieves,
        'receiveDetailsData'    =>  $receiveDetails
    ];
    
    return $feedbackData;
}

/*******************************************************************************
 * The following code will
 * Update Receive entry data.
 * There are 4 table to keet track on receive data. The are following:
 * 1. inv_receive (Update single row)      
 * 2. inv_receivedetail (First Delete all rows then Store Multiple row)
 * 3. inv_materialbalance (First Delete all rows then Store Multiple row)
 * 4. inv_supplierbalance (Update single row)
 * *****************************************************************************
 */

if(isset($_POST['product_update_submit']) && !empty($_POST['product_update_submit'])){
    $receive_total      =   0;
    $no_of_material     =   0;
    $edit_id            =   $_POST['edit_id'];
    $mrr_no             =   $_POST['mrr_no'];
    
	
	$queryedit	= "SELECT `approval_status` FROM `inv_receive` WHERE `mrr_no`='$mrr_no'";
    $result		=	$conn->query($queryedit);
	$row		=	mysqli_fetch_assoc($result);
	if($row['approval_status'] == 0){
		
		// first delete all from inv_receivedetail; 
		$delsql    = "DELETE FROM inv_receivedetail WHERE mrr_no='$mrr_no'";
		$conn->query($delsql);
		// first delete all from inv_materialbalance; 
		$delsq2    = "DELETE FROM inv_materialbalance WHERE mb_ref_id='$mrr_no'";
		$conn->query($delsq2);
		
		for ($count = 0; $count < count($_POST['quantity']); $count++) {
			$mrr_date           = $_POST['mrr_date'];        
			$purchase_id        = $_POST['purchase_id'];
			$Purchase_date      = $_POST['Purchase_date'];
			$challan_no         = $_POST['challan_no'];
			$challan_date       = $_POST['challan_date'];
			$requisition_no     = $_POST['requisition_no'];
			$requisition_date   = $_POST['requisition_date'];
			$supplier_name      = $_POST['supplier_name'];
			$supplier_id        = $_POST['supplier_id'];
			$project_id			= $_POST['project_id'];
			$warehouse_id		= $_POST['warehouse_id'];


			$material_name      = $_POST['material_name'][$count];
			$material_id        = $_POST['material_id'][$count];
			$unit               = $_POST['unit'][$count];
			//$part_no            = $_POST['part_no'][$count];
			$quantity           = $_POST['quantity'][$count];
			$no_of_material     = $no_of_material+$quantity;
			$unit_price         = $_POST['unit_price'][$count];
			$totalamount        = $_POST['totalamount'][$count];
			$receive_total      = $receive_total+$totalamount;
			$project_id         = $_POST['project_id'];
			$vat_challan_no     = $_POST['vat_challan_no'];
			$remarks            = $_POST['remarks'];
			
			
			if (is_uploaded_file($_FILES['sn_prt_image']['tmp_name'])) 
			{
				$temp_file=$_FILES['sn_prt_image']['tmp_name'];
				$mrr_image=time().$_FILES['sn_prt_image']['name'];
				$q = move_uploaded_file($temp_file,"images/".$mrr_image);
			}
			else
			{
			 $mrr_image = $_POST["sn_old_image"];
			}
			

			$query = "INSERT INTO `inv_receivedetail` (`mrr_no`,`material_id`,`unit_id`,`receive_qty`,`unit_price`,`sl_no`,`total_receive`,`project_id`,`warehouse_id`) VALUES ('$mrr_no','$material_id','$unit','$quantity','$unit_price','1','$totalamount','$project_id','$warehouse_id')";
			$conn->query($query);
			/*
			 *  Insert Data Into inv_materialbalance Table:
			*/
			$mb_ref_id      = $mrr_no;
			$mb_materialid  = $material_id;
			$mb_date        = (isset($Purchase_date) && !empty($Purchase_date) ? date('Y-m-d h:i:s', strtotime($Purchase_date)) : date('Y-m-d h:i:s'));
			$mbin_qty       = $quantity;
			$mbin_val       = $totalamount;
			$mbout_qty      = 0;
			$mbout_val      = 0;
			$mbprice        = $unit_price;
			$mbtype         = 'Receive';
			$mbserial       = '1.1';
			$mbunit_id      = $project_id;
			$mbserial_id    = 0;
			$jvno           = $mrr_no;
			//$part_no        = $part_no;        
			
			$query_inmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`mbserial`,`mbserial_id`,`mbunit_id`,`jvno`,`project_id`,`warehouse_id`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbin_val','$mbout_qty','$mbout_val','$mbprice','$mbtype','$mbserial','$mbunit_id','$mbserial_id','$jvno','$project_id','$warehouse_id')";
			$conn->query($query_inmb);
		}
		/*
			*  Update Data Into inv_receive Table:
		*/
		$query2    = "UPDATE `inv_receive` SET `mrr_no`='$mrr_no',`mrr_date`='$mrr_date',`purchase_id`='$purchase_id',`receive_acct_id`='16-001-001',`supplier_id`='$supplier_id',`postedtogl`='0',`vat_challan_no`='$vat_challan_no',`remarks`='$remarks',`receive_type`='Credit',`project_id`='$project_id',`warehouse_id`='$warehouse_id',`receive_unit_id`='1',`receive_total`='$receive_total',`no_of_material`='$no_of_material',`challanno`='$challan_no',`challan_date`='$challan_date',`requisitionno`='$requisition_no',`requisition_date`='$requisition_date' ,`mrr_image`='$mrr_image' WHERE `id`='$edit_id'";
		$result2 = $conn->query($query2);
		
		
		
		
		/*
			*  Update Data Into inv_supplierbalance Table:
		*/
		$query4    = "UPDATE `inv_supplierbalance` SET `sb_ref_id`='$mrr_no',`sb_date`='$mrr_date',`sb_supplier_id`='$supplier_id',`sb_dr_amount`='0',`sb_cr_amount`='$receive_total',`sb_remark`='$remarks',`sb_partac_id`='$mrr_no' WHERE `sb_ref_id`='$mrr_no'";
		$result2 = $conn->query($query4);
		
		$_SESSION['success']    =   "Receive UPDATE process have been successfully updated.";
		header("location: receive_edit.php?edit_id=".$edit_id);
		exit();
	}else{
		$_SESSION['error']    =   "Sorry..! This MRR is not able to edit anymore.";
		header("location: receive_edit.php?edit_id=".$edit_id);
		exit();
	}
	
}


?>