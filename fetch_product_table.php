<?php
//fetch.php
include('connection/connect.php');
$column = array("inv_product.id", "inv_product.product_name", "inv_product.rak_no", "categories.name");
$query = "
 SELECT * FROM inv_product 
 INNER JOIN categories 
 ON categories.id = inv_product.cat_id 
";
$query .= " WHERE ";
if(isset($_POST["is_categories"]))
{
 $query .= "inv_product.cat_id = '".$_POST["is_categories"]."' AND ";
}
if(isset($_POST["search"]["value"]))
{
 $query .= '(inv_product.id LIKE "%'.$_POST["search"]["value"].'%" ';
 $query .= 'OR inv_product.product_name LIKE "%'.$_POST["search"]["value"].'%" ';
 $query .= 'OR inv_product.rak_no LIKE "%'.$_POST["search"]["value"].'%" ';
 $query .= 'OR categories.name LIKE "%'.$_POST["search"]["value"].'%" ';
}

if(isset($_POST["order"]))
{
 $query .= 'ORDER BY '.$column[$_POST['order']['0']['column']].' '.$_POST['order']['0']['dir'].' ';
}
else
{
 $query .= 'ORDER BY inv_product.id DESC ';
}

$query1 = '';

if($_POST["length"] != 1)
{
 $query1 .= 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];
}

$number_filter_row = mysqli_num_rows(mysqli_query($conn, $query));

$result = mysqli_query($conn, $query . $query1);

$data = array();

while($row = mysqli_fetch_array($result))
{
	$actionData     =   get_receive_list_action_data($row);
 $sub_array = array();
 $sub_array[] = $row["product_name"];
 $sub_array[] = $row["rak_no"];
 $sub_array[] = $row["name"];
 $sub_array[] = $actionData;
 $data[] = $sub_array;
}

function get_receive_list_action_data($row){
    $edit_url = 'receive_edit.php?edit_id='.$row["id"];
    $view_url = 'receive-view.php?no='.$row["id"];
    $action = "";
	
    $action.='<span><a class="action-icons c-delete" href="'.$edit_url.'" title="edit"><i class="fa fa-edit text-info mborder"></i></a></span>';
							
							
							
	 $action.='<span><a class="action-icons c-approve" href="'.$view_url.'" title="View"><i class="fas fa-eye text-success mborder"></i></a></span>';
							
							
	

    return $action;

}

function get_all_data($conn)
{
 $query = "SELECT * FROM inv_product";
 $result = mysqli_query($conn, $query);
 return mysqli_num_rows($result);
}

$output = array(
 "draw"    => intval($_POST["draw"]),
 "recordsTotal"  =>  get_all_data($conn),
 "recordsFiltered" => $number_filter_row,
 "data"    => $data
);

echo json_encode($output);

?>