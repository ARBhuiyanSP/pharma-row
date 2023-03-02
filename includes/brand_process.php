<?php 
include '../connection/connect.php';
include '../helper/utilities.php';

if(ISSET($_POST['show'])){
		$query = $conn->query("SELECT * FROM `brands`");
		while($fetch = $query->fetch_array()){
			echo
				"
					<tr>
						<td>".$fetch['name']."</td>
						<td><center><button class='btn btn-warning edit' name='".$fetch['id']."'><span class='glyphicon glyphicon-edit'></span> Edit</button> | <button class='btn btn-danger delete' name='".$fetch['id']."'><span class='glyphicon glyphicon-trash'></span> Delete</button></center></td>
					</tr>
				";
			
		}
	}
	
	if(ISSET($_POST['saved'])){
		$name = (isset($_POST['name']) && !empty($_POST['name']) ? trim(mysqli_real_escape_string($conn,$_POST['name'])) : "");
		$dataParam     =   [
				'name'	=>  $name
			];
		$response   =   saveData("brands", $dataParam);
		return $response;
	}
	
	if(ISSET($_POST['deleted'])){
		$id = $_POST['id'];
		$conn->query("DELETE FROM `brands` WHERE `id` = '$id'");
	}
	
	if(ISSET($_POST['id'])){
		$id = $_POST['id'];
		
		$query = $conn->query("SELECT * FROM `brands` WHERE `id` ='$id'");
		$fetch = $query->fetch_array();
		
		$array = array(
			'id' => $fetch['id'],
			'name' => $fetch['name']
		);
		
		echo json_encode($array);
	}
	if(ISSET($_POST['updated'])){
		$id = $_POST['id'];
		$name = $_POST['name'];
		
		$conn->query("UPDATE `brands` set `name` = '$name' WHERE `id` = '$id'");
	}
?>
