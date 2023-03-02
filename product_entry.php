<?php 
include 'header.php';
?>
<style>
.form-group{
	margin-bottom:0rem !important;
}
</style>
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            New Product Entry</div>
        <div class="card-body">
            <!--here your code will go-->
			<div class="row">
				<div class="col-md-4">
					<div class="form-group">
						<form class="" action="" method="post" name="add_name" id="add_name" onsubmit="return Validate(this);">
							<div class="form-group row">
								<label for="name" class="col-sm-5 col-form-label">Product name</label>
								<div class="col-sm-7">
									<input type="text" name="name" class="form-control" id="name">
								</div>
							</div>
							<div class="form-group row">
								<label for="alert_qty" class="col-sm-5 col-form-label">Alert Qty</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="alert_qty" name="alert_qty">
								</div>
							</div>
							<div class="form-group row">
								<label for="brand" class="col-sm-5 col-form-label">Brand/Company</label>
								<div class="col-sm-7">
									<select class="form-control select2" id="brand" name="brand" required>
										<option value="">Select</option>
										<?php
										$projectsData = getTableDataByTableName('brands');

										if (isset($projectsData) && !empty($projectsData)) {
											foreach ($projectsData as $data) {
												?>
												<option value="<?php echo $data['id']; ?>"><?php echo $data['name']; ?></option>
												<?php
											}
										}
										?>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<label for="brand" class="col-sm-5 col-form-label">Type/Item</label>
								<div class="col-sm-7">
									<select class="form-control select2" id="type" name="type" required>
										<option value="">Select</option>
										<?php
										$projectsData = getTableDataByTableName('types');

										if (isset($projectsData) && !empty($projectsData)) {
											foreach ($projectsData as $data) {
												?>
												<option value="<?php echo $data['id']; ?>"><?php echo $data['name']; ?></option>
												<?php
											}
										}
										?>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<label for="brand" class="col-sm-5 col-form-label">Categories</label>
								<div class="col-sm-7">
									<select class="form-control select2" id="category" name="category" required>
										<option value="">Select</option>
										<?php
										$projectsData = getTableDataByTableName('categories');

										if (isset($projectsData) && !empty($projectsData)) {
											foreach ($projectsData as $data) {
												?>
												<option value="<?php echo $data['id']; ?>"><?php echo $data['parentcat'] ?> - <?php echo $data['name'] ?></option>
												<?php
											}
										}
										?>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<label for="generic_name" class="col-sm-5 col-form-label">Generic Name</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="generic_name" name="generic_name">
								</div>
							</div>
							<div class="form-group row">
								<label for="rak_no" class="col-sm-5 col-form-label">Rak No</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="rak_no" name="rak_no">
								</div>
							</div>
							<div class="form-group row">
								<label for="brand" class="col-sm-5 col-form-label">Packing mode</label>
								<div class="col-sm-7">
									<select class="form-control" name="packing_mode">
										<option value="Box">Box</option>
										<option value="Carton">Carton</option>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<label for="rak_no" class="col-sm-5 col-form-label">Pcs Per Box/Carton</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="box_pics" name="box_pics" onkeyup="sale_per_pics();">
								</div>
							</div>
							<div class="form-group row">
								<label for="rak_no" class="col-sm-5 col-form-label">Free Per Carton/Box</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="free_per_box" name="free_per_box">
								</div>
								<label for="rak_no" class="col-sm-3 col-form-label">Free Pics</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="free_pics" name="free_pics">
								</div>
							</div>
							<div class="form-group row">
								<label for="rak_no" class="col-sm-5 col-form-label">Buy rate</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="buy_price" name="buy_price">
								</div>
							</div>
							<div class="form-group row">
								<label for="rak_no" class="col-sm-3 col-form-label">Sales rate</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="sale_price" name="sale_price" onkeyup="sale_per_pics();">
								</div>
								<label for="rak_no" class="col-sm-3 col-form-label">Pics Rate</label>
								<div class="col-sm-3">
									<input type="number" class="form-control" id="pics_sale" name="pics_sale" readonly>
								</div>
							</div>
							<div class="form-group row">
								<label for="rak_no" class="col-sm-3 col-form-label">Price Date</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="price_date" name="price_date">
								</div>
								<label for="rak_no" class="col-sm-3 col-form-label">Status</label>
								<div class="col-sm-3">
									<select class="form-control" name="status">
										<option value="Active">Active</option>
										<option value="Inactive">Inactive</option>
									</select>
								</div>
							</div>
							<div class="row" style="">
								<div class="col-xs-12">
									<div class="form-group">
										<input type="submit" name="product_submit" id="product_submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />   
									</div>
								</div>
							</div>
						</form>
					</div>
					<!--here your code will go-->
				</div>
				<div class="col-md-8"></div>
			</div>
        </div>
    </div>

</div>

<!-- /.container-fluid -->
<script>
    $(document).ready(function () {

        $('#submit').click(function () {
            $.ajax({
                url: "name.php",
                method: "POST",
                data: $('#add_name').serialize(),
                success: function (data)
                {
                    alert(data);
                    $('#add_name')[0].reset();
                }
            });
        });

    });
	
	
	function sale_per_pics() {
        let boxPics     =   document.getElementById('box_pics').value;
        let sellPrice     =   document.getElementById('sale_price').value;
        let perPics     =   parseFloat((sellPrice / boxPics));

        
        
        document.getElementById('pics_sale').value = perPics.toFixed(2);
    }

</script>
<script>
    $(function () {
        $("#mrr_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<script>
    $(function () {
        $("#challan_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<script>
    $(function () {
        $("#requisition_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<?php include 'footer.php' ?>