<?php include 'header.php' ?>
<style>

</style>
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Overview</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Category Setup</div>
        <div class="card-body">
			<div class="row">
				<div class="col-md-4">
					<form method="POST">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label>Category Name</label>
									<input type="text" id="name" class="form-control"/>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label>Parent Category</label>
									<select id="parentcat" class="form-control">
										<option></option>
										<?php 
											$query = $conn->query("SELECT * FROM `categories`");
											while($fetch = $query->fetch_array()){
										?>
										<option value="<?php echo $fetch['name'] ?>"><?php echo $fetch['parentcat'] ?> - <?php echo $fetch['name'] ?></option>
											<?php } ?>
									</select>
								</div>
							</div>
						</div>
						<center><button type="button" id="save" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-save"></span> Save</button><button type="button" id="update" class="btn btn-warning btn-block"><span class="glyphicon glyphicon-edit"></span> Update</button></center>
					</form>
				</div>
				<div class="col-md-8">
				<table id="example" class="table table-bordered">
					<thead>
						<tr>
							<th>Category Name</th>
							<th>Parent Category</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody id="data"></tbody>
				</table>
				</div>
			</div>
        </div>
    </div>
</div><script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>

<script src="js/categories.js"></script>