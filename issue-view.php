<?php include 'header.php';
$issue_id=$_GET['no']; ?>
<style>
.table-bordered {
	border: 1px solid #000000;
}
.table-bordered th, .table-bordered td{
	border: 1px solid #000000;
}
.table th, .table td {
	padding:2px 10px 2px 10px;
}

.challan{
	font-weight:bold;
}
</style>
<div class="container-fluid">
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Material Issue Report
			<button class="btn btn-default" onclick="printDiv('printableArea')" style="float:right;"><i class="fa fa-print" aria-hidden="true" style="    font-size: 17px;"> Print</i></button></div>
			<div class="card-body" id="printableArea">
				<div class="row">
					<div class="col-sm-1"></div>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-6">	
								<p>
								<img src="images/Saif_Engineering_Logo_165X72.png" height="50px;"/>
								<h5>Saif Powertec Ltd</h5><span>Corporate Division</span></br></p></div>
							<div class="col-sm-6">
								<table class="table table-bordered">
									<tr>
										<th>Issue ID:</th>
										<td><?php echo $issue_id; ?></td>
									</tr>
									<tr>
										<th>Issue Date:</th>
										<td><?php
											$sqld = "select * from `inv_issue` where `issue_id`='$issue_id'";
											$resultd = mysqli_query($conn, $sqld);
											$rowd = mysqli_fetch_array($resultd);
										echo $rowd['issue_date'] ?></td>
									</tr>
									<tr>
										<th>Employee:</th>
										<td>
											<?php echo $rowd['employee_name']; ?> - [<?php echo $rowd['employee_id']; ?>]
										</td>
									</tr>
									<tr>
										<th>Designation:</th>
										<td>
											<?php echo $rowd['designation']; ?> - [<?php echo $rowd['department']; ?>] - <?php echo $rowd['division']; ?>
										</td>
									</tr>
								</table>
							</div>
						</div>
						<center><h3>MATERIAL ISSUE DETAILS</h3></center>
						<table class="table table-bordered" id="material_receive_list"> 
							<thead>
								<tr>
									<th>SL #</th>
									<th>Material Name</th>
									<th>Material Unit</th>
									<th>Quantity</th>
								</tr>
							</thead>
							<tbody id="material_receive_list_body">
								<?php
								$transfer_id=$_GET['no'];
								$sql = "select * from `inv_issuedetail` where `issue_id`='$issue_id'";
								$result = mysqli_query($conn, $sql);
									for($i=1; $row = mysqli_fetch_array($result); $i++){
								?>
								<tr>
									<td><?php echo $i; ?></td>
									<td>
										<?php 
											$dataresult =   getDataRowByTableAndId('inv_material', $row['material_name']);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->material_description : '');
										?>
									</td>
									<td>
										<?php 
										$dataresult =   getDataRowByTableAndId('inv_item_unit', $row['unit']);
										echo (isset($dataresult) && !empty($dataresult) ? $dataresult->unit_name : '');
										?>
									</td>
									<td><?php echo $row['issue_qty'] ?></td>
								</tr>
								<?php } ?>
								<tr>
									<td colspan="3" class="grand_total" style="text-align:right">Grand Total:</td>
									<td>
										<?php 
										$sql2 = "SELECT sum(issue_qty) FROM  `inv_issuedetail` where `issue_id`='$issue_id'";
										$result2 = mysqli_query($conn, $sql2);
										for($i=0; $row2 = mysqli_fetch_array($result2); $i++){
										$fgfg2=$row2['sum(issue_qty)'];
										echo $fgfg2 ;
										}
										?>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="row" style="text-align:center">
							<div class="col-sm-6"></br></br>--------------------</br>Receiver Signature</div>
							<div class="col-sm-6"></br></br>--------------------</br>Authorised Signature</div>
						</div></br>
						<div class="row">
							<div class="col-sm-12" style="border:1px solid gray;border-radius:5px;padding:10px;color:#f26522;">
								<h5>Notice***</br><span style="font-size:14px;color:#000000;">Please Check Everything Before Signature</span></h5>
								
							</div>
						</div>
					</div>
					<div class="col-sm-1"></div>
				</div>
			</div>				
			<script>
			function printDiv(divName) {
				 var printContents = document.getElementById(divName).innerHTML;
				 var originalContents = document.body.innerHTML;

				 document.body.innerHTML = printContents;

				 window.print();

				 document.body.innerHTML = originalContents;
			}
			</script>
		</div>
	</div>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>