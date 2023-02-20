<?php include 'header.php';
include 'includes/opening_stock_process.php'; ?>
<style>
.comment {
	display:none;
}
</style>
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item"> <a href="#">Dashboard</a></li>
        <li class="breadcrumb-item active">Overview</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Opening Balance Maintenece</div>
        <div class="card-body">						
<div>
    <form name="" action="" method="post">
        <table class="table table-condensed table-hover">
				<thead>
					<tr class=" gray_sai">
						
						<th>
							Material ID Code
						</th>
						
						<th>
							Material Name
						</th>
						<th>
							Opening Balance Qty
						</th>
						
						<th>
							Opening Balance Value
						</th>
					</tr>
				</thead>
				<tbody>
					
					<?php
					$sql2 = "select * from `inv_material`";
					$result2 = mysqli_query($conn, $sql2);
					for($i=1; $row2 = mysqli_fetch_array($result2); $i++){
					?>
					<tr>
						<td>
							<input class="form-control" name="material_id_code[]" id="material_id_code" type="text" value="<?php echo $row2['material_id_code']; ?>" readonly />
						</td>
						
						<td class="left_align">
							
							<input class="form-control" name="material_description[]" id="material_description" type="text" value="<?php echo $row2['material_description']; ?>" readonly />
						</td>
						<td>
							<input class="form-control" name="op_balance_qty[]" id="op_balance_qty" type="text" value="<?php echo $row2['op_balance_qty']; ?>"  />
						</td>
						<td>
							<input class="form-control" name="op_balance_val[]" id="op_balance_val" type="text" value="<?php echo $row2['op_balance_val']; ?>"  />
						</td>
						<input type="hidden" name="op_date" value="<?php echo date('Y-m-d'); ?>">
						<?php $project_id	= $_SESSION['logged']['project_id']; ?>
						<input type="hidden" name="project_id" value="<?php echo $project_id; ?>">
						<?php $warehouse_id	= $_SESSION['logged']['warehouse_id']; ?>
						<input type="hidden" name="warehouse_id" value="<?php echo $warehouse_id; ?>">
					</tr>
					<?php } ?>
					
				</tbody>
			</table>
			<div class="col-xs-12">
				<div class="form-group">
					<input type="submit" name="op_submit" id="submit" class="btn btn-block btn-info" style="" value="SAVE DATA" />    
				</div>
			</div>
    </form>
</div>
<!-- <div id="d2">
    <button id='b1'>Show form</button>
</div>
<script>
$('#b1,#b2').click(function () {
    $('#d1,#d2').toggle();
})
</script> -->
			
        </div>
    </div>

</div>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>
<script>
    $(function () {
        $("#invoice_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>