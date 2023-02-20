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
        <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
        </li>
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
        <table class="table table-condensed table-hover table-bordered">
				<thead>
					<tr style="background-color:#007BFF;color:#fff;">
						<th>Category</th>
						<th>Sub Category</th>
						<th>Material Code</th>
						<th>Material Name</th>
						<th>Unit</th>
						<th>Opening Stock</th>
						<th>Opening Stock Value</th>
					</tr>
				</thead>
				<tbody>
					<?php
						$sql	=	"SELECT * FROM inv_material  GROUP BY `material_id`";
						$result = mysqli_query($conn, $sql);
						while($row=mysqli_fetch_array($result))
						{
					?>
						<tr style="background-color:#b6d7fa;">
							<td>
								<?php 
								$dataresult =   getDataRowByTableAndId('inv_materialcategorysub', $row['material_id']);
								echo (isset($dataresult) && !empty($dataresult) ? $dataresult->category_description : '');
								?>
							</td>
							<td colspan="6"></td>
						</tr>
						<?php 
							$material_id = $row['material_id'];
							$sqlall	=	"SELECT * FROM inv_material WHERE `material_id` = '$material_id' GROUP BY `material_sub_id`;";
							$resultall = mysqli_query($conn, $sqlall);
							while($rowall=mysqli_fetch_array($resultall))
							{ ?>
						
						<tr>
							<td></td>
							<td style="background-color:#b6d7fa;">
								<?php
								$dataresult =   getDataRowByTableAndId('inv_materialcategory', $rowall['material_sub_id']);
								echo (isset($dataresult) && !empty($dataresult) ? $dataresult->material_sub_description : '');
								?>
							</td>
							<td colspan="5"></td>
						</tr>
						<?php 
							$material_sub_id = $rowall['material_sub_id'];
							$sqlmat	=	"SELECT * FROM inv_material WHERE `material_sub_id` = '$material_sub_id' GROUP BY `material_id_code`;";
							$resultmat = mysqli_query($conn, $sqlmat);
							while($rowmat=mysqli_fetch_array($resultmat))
							{ ?>
						
						<tr>
							<td></td>
							<td></td>
							<td><input class="form-control" name="material_id_code[]" id="material_id_code" type="text" value="<?php echo $rowmat['material_id_code']; ?>" readonly /></td>
							<td><input class="form-control" name="material_description[]" id="material_description" type="text" value="<?php echo $rowmat['material_description']; ?>" readonly /></td>
							<td><input class="form-control" name="material_description[]" id="material_description" type="text" value="<?php echo getDataRowByTableAndId('inv_item_unit', $rowmat['qty_unit'])->unit_name; ?>" readonly /></td>
							
							
							<?php
							$mb_materialid	=	$rowmat['material_id_code'];
							$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
							$sqlop			=	"SELECT * FROM inv_materialbalance WHERE `mb_materialid` = '$mb_materialid' AND `mbtype`='OP' AND `warehouse_id`='$warehouse_id';";
							$resultop		=	mysqli_query($conn, $sqlop);
							$rowop			=	mysqli_fetch_array($resultop);
							$rowcount 		=	mysqli_num_rows($resultop);
							
							if($rowcount > 0 AND $rowop['mbin_qty'] >= 0){
								$mbin_qty = $rowop['mbin_qty'];
								$validation = 'readonly';
								$submit		= 'disabled';
							}else{
								$mbin_qty = 0;
								$validation = '';
								$submit		= '';
							}
							
							if($rowcount > 0 AND $rowop['mbin_val'] >= 0){
								$mbin_val = $rowop['mbin_val'];
							}else{
								$mbin_val = 0;
							}
							?>
							
							<td><input class="form-control" name="op_balance_qty[]" id="op_balance_qty" type="text" value="<?php echo $mbin_qty; ?>" <?php echo $validation; ?> /></td>
							<td><input class="form-control" name="op_balance_val[]" id="op_balance_val" type="text" value="<?php echo $mbin_val; ?>" <?php echo $validation; ?> /></td>
						</tr>
						<?php } 
						
							} 
						} 
						?>
					</tbody>
			</table>
					<input type="hidden" name="op_date" value="<?php echo date('Y-m-d'); ?>">
					<?php $project_id	= $_SESSION['logged']['project_id']; ?>
					<input type="hidden" name="project_id" value="<?php echo $project_id; ?>">
					<?php $warehouse_id	= $_SESSION['logged']['warehouse_id']; ?>
					<input type="hidden" name="warehouse_id" value="<?php echo $warehouse_id; ?>">
			<div class="col-xs-12">
				<div class="form-group">
					<input type="submit" name="op_submit" id="submit" class="btn btn-block btn-info" style="" value="SAVE DATA" <?php echo $submit; ?>/>    
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