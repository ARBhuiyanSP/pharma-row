<?php
	require_once '../connection/connect.php';
	if(ISSET($_POST['res'])){
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
	
	
	$name = $_POST['name'];
	
	$conn->query("INSERT INTO `brands` VALUES('', '$name', '', '')");
	
?> 