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
            <a href="supplier_info.php">Category List</a>
        </li>
        <li class="breadcrumb-item active"> Category Information</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i> Category Information Form
		</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_name" id="add_name">
                    <div class="row" id="div1" style="">
					
					
                       
						
<div class="col-xs-3">
                            <div class="form-group">
                                <label>Supplier ID</label>
								<?php
								
									if(isset($rowedit['code']) && !empty($rowedit['code'])){
										$supplier_id =$rowedit['code'];
									}else{
										$supplier_id 	=	getDefaultCategoryCode('suppliers', 'code', '03d', '001', 'SID-');
									}
                                   ?>
                                <input type="text" name="supplier_id" id="supplier_id" value="<?php echo $supplier_id; ?>" class="form-control" readonly="readonly">
                            </div>
</div>


						
						
						
						<div class="col-xs-3">
                            <div class="form-group">
                                <label>Supplier Name</label>
                                <input type="text" name="supplier_name" value="<?php if (isset($rowedit['name']) && $rowedit['name'] != '') { echo $rowedit['name']; }?>" id="supplier_name" class="form-control">
                            </div>
                        </div>
						
						
						<div class="col-xs-3">
                            <div class="form-group">
                                <label>Supplier Address</label>
                                <input type="text" name="supplier_address" value="<?php if (isset($rowedit['address']) && $rowedit['address'] != '') { echo $rowedit['address']; }?>" id="supplier_address" class="form-control">
                            </div>
                        </div>
						<div class="col-xs-3">
                            <div class="form-group">
                                <label>Contact Person</label>
                                <input type="text" name="contact_person" value="<?php if (isset($rowedit['contact_person']) && $rowedit['contact_person'] != '') { echo $rowedit['contact_person']; }?>" id="contact_person" class="form-control">
                            </div>
                        </div>
						<div class="col-xs-3">
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" name="supplier_phone" value="<?php if (isset($rowedit['supplier_phone']) && $rowedit['supplier_phone'] != '') { echo $rowedit['supplier_phone']; }?>" id="supplier_phone" class="form-control">
                            </div>
                        </div>
						
						
						<div class="col-xs-3">
                            <div class="form-group">
                                <label>Mobile</label>
            <input type="text" name="supplier_op_balance" value="<?php if (isset($rowedit['supplier_op_balance']) && $rowedit['supplier_op_balance'] != '') { echo $rowedit['supplier_op_balance']; }?>" id="supplier_op_balance" class="form-control" >
                            </div>
                        </div>
						
						
						
						<div class="col-xs-3">
                            <div class="form-group">
                                <label>Supplier Type</label>
                                <select name="supplier_type" class="form-control">
									<option value="cash">Cash</option>
									<option value="credit">Credit</option>
								</select>
                            </div>
                        </div>
						<div class="col-xs-3">
                            <div class="form-group">
                                <label>Material Type</label>
                                <select class="form-control select2" id="material_type" name="material_type" required>
									<option value="">Select</option>
                                    <?php
                                    $parentCats = getTableDataByTableName('inv_materialcategorysub', '', 'category_description');
                                    if (isset($parentCats) && !empty($parentCats)) {
                                        foreach ($parentCats as $pcat) {
                                            ?>
                                            <option value="<?php echo $pcat['id'] ?>"><?php echo $pcat['category_description'] ?></option>
                                        <?php }
                                    } ?>
								</select>
                            </div>
                        </div>
						<div class="col-xs-12">
                            <div class="form-group">
							
								
								 <input type="hidden" name="edit_id" value="<?php echo (isset($rowedit['id']) && !empty($rowedit['id']) ? $rowedit['id']: ""); ?>">
								 
							
                                <input type="submit" name="<?php echo $button_post_name; ?>" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="<?php echo $button_name; ?>" />   
                            </div>
                        </div>
                    </div>
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
                </form>
            </div>
            <!--here your code will go-->
        </div>
    </div>

</div>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>