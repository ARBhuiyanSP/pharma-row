<?php
/*******************************************************************************
 * The following code will
 * Store Receive entry data.
 * There are 4 table to keet track on receive data. The are following:
 * 1. inv_receive (Store single row)      
 * 2. inv_receivedetail (Store Multiple row)
 * 3. inv_materialbalance (Store Multiple row)
 * 4. inv_supplierbalance (Store single row)
 * *****************************************************************************
 */
if (isset($_POST['issue_submit']) && !empty($_POST['issue_submit'])) {
    //$receive_total      =   0;
    $no_of_material     =   0;
    for ($count = 0; $count < count($_POST['quantity']); $count++) {
        
        /*
         *  Insert Data Into inv_issuedetail Table:
        */       
        
        $issue_date         = $_POST['issue_date'];
        $issue_id           = $_POST['issue_id'];
        $employeeid			= $_POST['employeeid'];
        $employeename  		= $_POST['employeename'];
        $designation    	= $_POST['designation'];
        $department         = $_POST['department'];
        $division         	= $_POST['division'];
		
        $material_name      = $_POST['material_name'][$count];
        $material_id        = $_POST['material_id'][$count];
        $unit               = $_POST['unit'][$count];
        $quantity           = $_POST['quantity'][$count];
        $no_of_material     = $no_of_material+$quantity;
        //$totalamount        = $_POST['totalamount'][$count];
        //$receive_total      = $receive_total+$totalamount;
        $project_id         = $_POST['project_id'];
        $warehouse_id   	= $_POST['warehouse_id'];    
        $remarks            = $_POST['remarks'];     
        $expense_acct_id    =   '0';
        $cost_center        =   '0';
        
        $sales_pricer       =   '0';
        $total_sales        =   '0';
        $sales_profit       =   '0';
        $sales_margin       =   '0';
        $id_serial_id       =   '0';//unit_id  
        
        $query = "INSERT INTO `inv_issuedetail` (`issue_id`,`issue_date`,`material_id`,`material_name`,`unit`,`issue_qty`,`project_id`,`warehouse_id`,`package_id`,`building_id`) VALUES ('$issue_id','$issue_date','$material_id','$material_name','$unit','$quantity','$project_id','$warehouse_id','$package_id','$building_id')";
        $conn->query($query);
        
        /*
         *  Insert Data Into inv_materialbalance Table:
        */
        $mb_ref_id      = $issue_id;
        $mb_materialid  = $material_id;
        $mb_date        = (isset($issue_date) && !empty($issue_date) ? date('Y-m-d h:i:s', strtotime($issue_date)) : date('Y-m-d h:i:s'));
        $mbin_qty       = 0;
        $mbin_val       = 0;
        $mbout_qty      = $quantity;
        //$mbout_val      = $totalamount;
        //$mbprice        = $unit_price;
        $mbtype         = 'Issue';
        $mbserial       = '1.1';
        $mbunit_id      = $project_id;
        $mbserial_id    = 0;
        $jvno           = $issue_id;             
        
        $query_inmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`mbserial`,`mbserial_id`,`mbunit_id`,`jvno`,`project_id`,`warehouse_id`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbin_val','$mbout_qty','0','0','$mbtype','$mbserial','$mbunit_id','$mbserial_id','$jvno','$project_id','$warehouse_id')";
        $conn->query($query_inmb);
    }
    /*
    *  Insert Data Into inv_issue Table:
    */
    
    $issue_date     = $_POST['issue_date'];
    $buyer_id       = $_POST['project_id'];
    $posted_to_gl   = 0;
    $remarks        = $_POST['remarks'];
    $issue_type     = 'issue';
    $issue_unit_id  = 'issue';
    $chk_year_end   = 0;
    $no_of_material = $no_of_material;
    $issue_total    = $receive_total;
    $indent_no      = '1';
	 
    
    $query2 = "INSERT INTO `inv_issue` (`issue_id`,`issue_date`,`employee_name`,`employee_id`,`designation`,`department`,`division`,`remarks`,`project_id`,`warehouse_id`) VALUES ('$issue_id','$issue_date','$employeename','$employeeid','$designation','$department','$division','$remarks','$project_id','$warehouse_id')";
    $result2 = $conn->query($query2);
    
    $_SESSION['success']    =   "Issue process have been successfully completed.";
    header("location: issue_entry.php");
    exit();
}

function getissueDataDetailsById($id){
    global $conn;
    $receieves      =   "";
    $receiveDetails =   "";
    
    // get receive data
    $sql1           = "SELECT * FROM inv_issue where id=".$id;
    $result1        = $conn->query($sql1);

    if ($result1->num_rows > 0) {
        $receieves = $result1->fetch_object();
        // get receive details data
        $table                  =   'inv_issuedetail where issue_id='."'$receieves->issue_id'";
        $order                  =   'DESC';
        $column                 =   'issue_qty';
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

if(isset($_POST['issue_update_submit']) && !empty($_POST['issue_update_submit'])){
    $receive_total      =   0;
    $no_of_material     =   0;
    $edit_id            =   $_POST['edit_id'];
    $mrr_no             =   $_POST['issue_no'];
    
    // first delete all from inv_receivedetail; 
    $delsql    = "DELETE FROM inv_issuedetail WHERE issue_id='$mrr_no'";
    $conn->query($delsql);
    // first delete all from inv_materialbalance; 
    $delsq2    = "DELETE FROM inv_materialbalance WHERE mb_ref_id='$mrr_no'";
    $conn->query($delsq2);
    
    for ($count = 0; $count < count($_POST['quantity']); $count++) {
        /*
         *  Insert Data Into inv_issuedetail Table:
        */       
        
        $issue_date         = $_POST['issue_date'];
        $issue_id           = $_POST['issue_no'];
        $material_name      = $_POST['material_name'][$count];
        $material_id        = $_POST['material_id'][$count];
        $unit               = $_POST['unit'][$count];
        $part_no            = $_POST['part_no'][$count];
        $quantity           = $_POST['quantity'][$count];
        $no_of_material     = $no_of_material+$quantity;
        $unit_price         = $_POST['unit_price'][$count];
        $totalamount        = $_POST['totalamount'][$count];
        $receive_total      = $receive_total+$totalamount;
        $project_id         = $_POST['project_id'];
        $remarks            = $_POST['remarks'];     
        $expense_acct_id    =   '0';
        $cost_center        =   '0';
        
        $sales_pricer       =   '0';
        $total_sales        =   '0';
        $sales_profit       =   '0';
        $sales_margin       =   '0';
        $id_serial_id       =   '0';// 
        
        $query = "INSERT INTO `inv_issuedetail` (`issue_id`,`material_id`,`unit_id`,`expense_acct_id`,`cost_center`,`issue_qty`,`issue_price`,`sl_no`,`total_issue`,`sales_price`,`total_sales`,`sales_profit`,`sales_margin`,`id_serial_id`,`part_no`) VALUES ('$issue_id','$material_id','$unit','$expense_acct_id','$cost_center','$quantity','$unit_price','1','$totalamount','$sales_pricer','$total_sales','$sales_profit','$sales_margin','$id_serial_id','$part_no')";
        $conn->query($query);
        
        /*
         *  Insert Data Into inv_materialbalance Table:
        */
        $mb_ref_id      = $issue_id;
        $mb_materialid  = $material_id;
        $mb_date        = (isset($issue_date) && !empty($issue_date) ? date('Y-m-d h:i:s', strtotime($issue_date)) : date('Y-m-d h:i:s'));
        $mbin_qty       = $quantity;
        $mbin_val       = $totalamount;
        $mbout_qty      = 0;
        $mbout_val      = 0;
        $mbprice        = $unit_price;
        $mbtype         = 'Issue';
        $mbserial       = '1.1';
        $mbunit_id      = $project_id;
        $mbserial_id    = 0;
        $jvno           = $issue_id;
        $part_no        = $part_no;        
        
        $query_inmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`mbserial`,`mbserial_id`,`mbunit_id`,`jvno`,`part_no`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbin_val','$mbout_qty','$mbout_val','$mbprice','$mbtype','$mbserial','$mbunit_id','$mbserial_id','$jvno','$part_no')";
        $conn->query($query_inmb);
    }
    /*
        *  Update Data Into inv_receive Table:
    */
    $issue_date     = $_POST['issue_date'];
    $buyer_id       = $_POST['project_id'];
    $posted_to_gl   = 0;
    $remarks        = $_POST['remarks'];
    $issue_type     = 'issue';
    $issue_unit_id  = 'issue';
    $chk_year_end   = 0;
    $no_of_material = $no_of_material;
    $issue_total    = $receive_total;
    $indent_no      = '1';
    $receiver_name  = $_POST['receiver_name'];
    $query2    = "UPDATE inv_issue SET issue_id='$issue_id',issue_date='$issue_date',buyer_id='$buyer_id',posted_to_gl='$posted_to_gl',remarks='$remarks',issue_type='$issue_type',remarks='$remarks',issue_unit_id='$issue_unit_id',chk_year_end='$chk_year_end',no_of_material='$no_of_material',issue_total='$issue_total',indent_no='$indent_no',receiver_name='$receiver_name' WHERE id=$edit_id";
    $result2 = $conn->query($query2);
    
    $_SESSION['success']    =   "Issue process have been successfully updated.";
    header("location: issue_edit.php?edit_id=".$edit_id);
    exit();
}
if(isset($_GET['request_type']) && $_GET['request_type'] == "requested_by_info"){
    session_start();

    include "../Class/Database/Database.php";
    include '../function/global_connection.php';
    include "../helper/utilities.php";
    include "../Class/Employee.php";

    $emp_name_id    =   $_POST['emp_name_id'];


    $emp_ob     =   new Employee;

    $emp_ob->emp_id     =   trim($emp_name_id);

    $emp_info           =   $emp_ob->get_employee_info();

    echo json_encode($emp_info);
    exit;
}

?>