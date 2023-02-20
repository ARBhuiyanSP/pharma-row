<?php include 'header.php';
$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
 ?>
<link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">
<style>
table tbody tr{
	background-color:#E9ECEF;
	color:#000;
}
.table th, .table td {
	padding:2px;
}

</style>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
<script>
$(document).ready(function() {
    $('.js-example-basic-single').select2();
});
</script>
<div class="container-fluid">
		<div class="row">
			<div class="col-xl-12 col-sm-6 mb-4">
				<div class="row">
					<div class="col-xl-6 col-sm-6 mb-4">
						<div class="row">
							<div class="col-xl-6 col-sm-6 mb-4">
								<div class="card text-white bg-info o-hidden h-100">
									<div class="card-body">
										<div class="card-body-icon">
											<i class="fas fa-fw fa-truck"></i>
										</div>
									<?php
									if($_SESSION['logged']['user_type'] == 'superAdmin') {
										$sqlpmrr	=	"SELECT * FROM `inv_receive` WHERE `approval_status` = '0'";
									}else{
										$sqlpmrr	=	"SELECT * FROM `inv_receive` WHERE `warehouse_id`='$warehouse_id' AND `approval_status` = '0'";
									}
									
									$resultpmrr = mysqli_query($conn, $sqlpmrr);
									$totalPendingMrr = mysqli_num_rows($resultpmrr);
									?>
										<div class="mr-5"><?php echo $totalPendingMrr; ?> Pending MRR</div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="receive-list.php">
									<span class="float-left">View Details</span>
									<span class="float-right">
										<i class="fas fa-angle-right"></i>
									</span>
									</a>
								</div>
							</div>
							<div class="col-xl-6 col-sm-6 mb-4">
								<div class="card text-white bg-info o-hidden h-100">
									<div class="card-body">
										<div class="card-body-icon">
											<i class="fas fa-fw fa-truck"></i>
										</div>
									<?php
									if($_SESSION['logged']['user_type'] == 'superAdmin') {
										$sqlpmrr	=	"SELECT * FROM `inv_issue` WHERE `approval_status` = '0'";	
									}else{
										$sqlpmrr	=	"SELECT * FROM `inv_issue` WHERE `warehouse_id`='$warehouse_id' AND `approval_status` = '0'";
									}
									
									$resultpmrr = mysqli_query($conn, $sqlpmrr);
									$totalPendingMrr = mysqli_num_rows($resultpmrr);
									?>
										<div class="mr-5"><?php echo $totalPendingMrr; ?> Pending Issue</div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="issue-list.php">
									<span class="float-left">View Details</span>
									<span class="float-right">
										<i class="fas fa-angle-right"></i>
									</span>
									</a>
								</div>
							</div><!--
							<div class="col-xl-4 col-sm-6 mb-4">
								<div class="card text-white bg-info o-hidden h-100">
									<div class="card-body">
										<div class="card-body-icon">
											<i class="fas fa-fw fa-truck"></i>
										</div>
									<?php
									if($_SESSION['logged']['user_type'] == 'superAdmin') {
										$sqlpmrr	=	"SELECT * FROM `inv_return` WHERE `approval_status` = '0'";
									}else{
										$sqlpmrr	=	"SELECT * FROM `inv_return` WHERE `warehouse_id`='$warehouse_id' AND `approval_status` = '0'";
									}
									
									$resultpmrr = mysqli_query($conn, $sqlpmrr);
									$totalPendingMrr = mysqli_num_rows($resultpmrr);
									?>
										<div class="mr-5"><?php echo $totalPendingMrr; ?> Pending Return</div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="return-list.php">
									<span class="float-left">View Details</span>
									<span class="float-right">
										<i class="fas fa-angle-right"></i>
									</span>
									</a>
								</div>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
		
        <!-- Icon Cards-->
		<?php if($_SESSION['logged']['user_type'] !== 'whm') {?>
        <div class="row">
		  <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
				<?php
				$sqlsup	=	"SELECT * FROM suppliers";
				$resultsup = mysqli_query($conn, $sqlsup);
				$totalSupplier = mysqli_num_rows($resultsup);
				?>
                <div class="mr-5"><?php echo $totalSupplier; ?> Total Supplier</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="supplier_entry.php">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
				<?php
				$sqlwar	=	"SELECT * FROM inv_warehosueinfo";
				$resultwar = mysqli_query($conn, $sqlwar);
				$totalWarehouse = mysqli_num_rows($resultwar);
				?>
                <div class="mr-5"><?php echo $totalWarehouse; ?> Total Warehouse</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="warehouse_entry.php">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
        </div>
		
<?php } ?>
<div class="row">
	<div class="col-xl-12 col-sm-12 mb-3"><!--here your code will go-->
			<script>
			window.onload = function () {

			var chart = new CanvasJS.Chart("chartContainer", {
				animationEnabled: true,
				title:{
					text: "Top items stock at a glance"
				},	
				axisY: {
					title: "Items in Qty",
					titleFontColor: "#4F81BC",
					lineColor: "#4F81BC",
					labelFontColor: "#4F81BC",
					tickColor: "#4F81BC"
				},
				axisY2: {
					title: "Items in Qty",
					titleFontColor: "#C0504E",
					lineColor: "#C0504E",
					labelFontColor: "#C0504E",
					tickColor: "#C0504E"
				},	
				toolTip: {
					shared: true
				},
				legend: {
					cursor:"pointer",
					itemclick: toggleDataSeries
				},
				data: [
				<?php
				$projectsData = getwarehouseinfo('inv_warehosueinfo');
				if (isset($projectsData) && !empty($projectsData)) {
					foreach ($projectsData as $data) {
				?>
				
				
				{
					type: "column",	
					name: "<?php echo $data['name']; ?>",
					legendText: "<?php echo $data['name']; ?>",
					axisYType: "secondary",
					showInLegend: true,
					dataPoints:[
					
					<?php 
					$sql	=	"SELECT * FROM inv_material WHERE material_id = 13";
						$result = mysqli_query($conn, $sql);
						while($row=mysqli_fetch_array($result))
						{
							$warehouse 		= $data['id'];
							$to_date 		= date('Y-m-d');
							$mb_materialid 	= $row['material_id_code'];
							
							$sqlinqty = "SELECT SUM(`mbin_qty`) AS totalin FROM `inv_materialbalance` WHERE warehouse_id = $warehouse AND `mb_materialid` = '$mb_materialid' AND mb_date <= '$to_date'";
							$resultinqty = mysqli_query($conn, $sqlinqty);
							$rowinqty = mysqli_fetch_object($resultinqty) ;
							
							
							$sqloutqty = "SELECT SUM(`mbout_qty`) AS totalout FROM `inv_materialbalance` WHERE warehouse_id = $warehouse AND `mb_materialid` = '$mb_materialid' AND mb_date <= '$to_date'";
							$resultoutqty = mysqli_query($conn, $sqloutqty);
							$rowoutqty = mysqli_fetch_object($resultoutqty) ;
							
							//echo $rowinqty->totalin -$rowoutqty->totalout;
							
							$instock = $rowinqty->totalin -$rowoutqty->totalout;
							
					?>
						{ label: "<?php echo $row['material_description']; ?>", y: <?php echo number_format((float)$instock, 2, '.', ''); ?> },
						
						<?php } ?>
					]
				},
				
					<?php
					}
				}
				?>
				
				
				]
			});
			chart.render();

			function toggleDataSeries(e) {
				if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
					e.dataSeries.visible = false;
				}
				else {
					e.dataSeries.visible = true;
				}
				chart.render();
			}

			}
			</script>

			<div id="chartContainer" style="height: auto; width: 100%;"></div>
			<script src="js/canvasjs.min.js"></script>
            <!--here your code will go--></div>
</div>
		
		
		
      </div>
      <!-- /.container-fluid -->
<?php include 'footer.php' ?>