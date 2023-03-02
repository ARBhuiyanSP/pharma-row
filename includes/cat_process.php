<?php 
include '../connection/connect.php';
include '../helper/utilities.php';

if(ISSET($_POST['show'])){
		$query = $conn->query("SELECT * FROM `categories`");
		while($fetch = $query->fetch_array()){
			echo
				"
					<tr>
						<td>".$fetch['name']."</td>
						<td>".$fetch['parentcat']."</td>
						<td><center><button class='btn btn-warning edit' name='".$fetch['id']."'><span class='glyphicon glyphicon-edit'></span> Edit</button> | <button class='btn btn-danger delete' name='".$fetch['id']."'><span class='glyphicon glyphicon-trash'></span> Delete</button></center></td>
					</tr>
				";
			
		}
	}
	
	if(ISSET($_POST['saved'])){
		$name = (isset($_POST['name']) && !empty($_POST['name']) ? trim(mysqli_real_escape_string($conn,$_POST['name'])) : "");
		$parentcat = (isset($_POST['parentcat']) && !empty($_POST['parentcat']) ? trim(mysqli_real_escape_string($conn,$_POST['parentcat'])) : "");
		$dataParam     =   [
				'name'	=>  $name,
				'parentcat'	=>  $parentcat
			];
		$response   =   saveData("categories", $dataParam);
		return $response;
	}
	
	if(ISSET($_POST['deleted'])){
		$id = $_POST['id'];
		$conn->query("DELETE FROM `categories` WHERE `id` = '$id'");
	}
	
	if(ISSET($_POST['id'])){
		$id = $_POST['id'];
		
		$query = $conn->query("SELECT * FROM `categories` WHERE `id` ='$id'");
		$fetch = $query->fetch_array();
		
		$array = array(
			'id' => $fetch['id'],
			'name' => $fetch['name'],
			'parentcat' => $fetch['parentcat']
		);
		
		echo json_encode($array);
	}
	if(ISSET($_POST['updated'])){
		$id = $_POST['id'];
		$name = $_POST['name'];
		$parentcat = $_POST['parentcat'];
		
		$conn->query("UPDATE `categories` set `name` = '$name', `parentcat` = '$parentcat' WHERE `id` = '$id'");
	}
?>
