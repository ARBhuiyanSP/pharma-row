<?php 
include 'header.php';

if (isset($_GET['id']) && $_GET['id'] != '') { 
	
	$id=	$_GET['id'];
	
	
	$table 	= 'suppliers';
	$sqledit = "SELECT * FROM $table WHERE `id`='$id'";
	$resultedit = $conn->query($sqledit);
	$rowedit = mysqli_fetch_array($resultedit);
	$button_name = 'Update';
	$button_post_name = 'suppliers_update_submit';
}
else{
	$button_name = 'Save';
	$button_post_name = 'suppliers_submit';
}
?>
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="products.php">Product List</a>
        </li>
        <li class="breadcrumb-item active"> Product Information</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i> Product Information Form
			<button class="btn btn-success" onclick="window.location.href='product_entry.php';"> Add New Product</button>
		</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                
					<div class="row">
						<div class="col-xs-12">
							<table id="dataTable" class="table table-bordered table-striped table-hover">
								<thead>
									<tr>
										<th>Supplier ID</th>
										<th>Supplier Name</th>
										<th>Address</th>
										<th>Material Types</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
								<?php
                                    $projectsData = getTableDataByTableName('suppliers');
                                    ;
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?>
									<tr>
										<td><?php echo $data['code']; ?></td>
										<td><?php echo $data['name']; ?></td>
										<td><?php echo $data['address']; ?></td>
										<td><?php 
												$mb_materialid = $data['material_type'];
												$sqlname	=	"SELECT * FROM `inv_materialcategorysub` WHERE `id` = '$mb_materialid' ";
												$resultname = mysqli_query($conn, $sqlname);
												$rowname=mysqli_fetch_array($resultname);
												echo $rowname['category_description'];
											?>
										</td>
										<td>
	<span><a class="action-icons c-approve" href="supplier_entry.php?id=<?php echo $data['id']; ?>" title="Edit"><i class="fas fa-edit text-info"></i></a></span>
										</td>
									</tr>
									<?php
                                        }
                                    }
                                    ?>
								</tbody>
							</table>
						</div>
					</div>
            </div>
            <!--here your code will go-->
        </div>
    </div>

</div>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>