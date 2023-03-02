<?php include 'header.php' ?>
<link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">
<div class="container-fluid">
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Material Receive List
			<a href="receive_entry.php" style="float:right"><i class="fas fa-plus"></i> Receive Entry<a>
		</div>
        <div class="card-body">
			<div class="table-responsive data-table-wrapper">
				<table id="product_data_list" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Name</th>
							<th>RAK No</th>
							<th>
								<select name="categories" id="categories" class="form-control">
									<option value="">Categories</option>
										<?php 
										$query = "SELECT * FROM categories ORDER BY name ASC";
										$result = mysqli_query($conn, $query);
										while($row = mysqli_fetch_array($result))
										{
										echo '<option value="'.$row["id"].'">'.$row["name"].'</option>';
										}
										?>
								</select>
							</th>
							<th>Action</th>
						</tr>
					</thead>
				</table>
			</div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>
<script type="text/javascript" language="javascript" >
$(document).ready(function(){
 
 load_receive_data();

 function load_receive_data(is_categories)
 {
  var dataTable = $('#product_data_list').DataTable({
   "processing":true,
   "serverSide":true,
   "order":[],
   "ajax":{
    url:"fetch_product_table.php",
    type:"POST",
    data:{is_categories:is_categories}
   },
   "columnDefs":[
    {
     "targets":[2],
     "orderable":false,
    },
   ],
  });
 }

 $(document).on('change', '#categories', function(){
  var categories = $(this).val();
  $('#product_data_list').DataTable().destroy();
  if(categories != '')
  {
   load_receive_data(categories);
  }
  else
  {
   load_receive_data();
  }
 });
});
</script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>