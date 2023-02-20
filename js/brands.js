$(document).ready(function(){
	var brand_id;
	
	DisplayData();
	
	$('#update').hide();
	
	$('#save').on('click', function(){
		if($('#name').val() == ""){
			alert("Hello World");
		}else{
			var name = $('#name').val();
			
			$.ajax({
				url: 'function/brands.php',
				type: 'POST',
				data: {
					name: name
				},
				success: function(data){
					 $('#name').val('');
					 DisplayData();
				}
			});
		}
		
	});
	
	function DisplayData(){
		$.ajax({
			url: 'function/brands.php',
			type: 'POST',
			data: {
				res: 1
			},
			success: function(response){
				$('#data').html(response);
			}
		})
	}
	
	 $(document).on('click', '.delete', function(){
		var id = $(this).attr('name');
		if(confirm('Are you sure to remove this record ?'))
        {
		$.ajax({
			url: 'delete_query.php',
			type: 'POST',
			data: {
				id: id
			},
			success: function(data){
				alert("Record removed successfully");
				DisplayData();
				$('#update').hide();
				$('#save').show();	
				$('#name').val('');
			}
		});
		}
	}) 
	/* ---------------------- */

	/* ---------------------- */
	/* ---------------------- */
	/* ---------------------- */
	/* ---------------------- */
	$(document).on('click', '.edit', function(){
		var id = $(this).attr('name');
		
		$.ajax({
			url: 'edit.php',
			type: 'POST',
			data: {
				id: id
			},
			success: function(response){
				var getArray = jQuery.parseJSON(response);
				
				brand_id = getArray.brand_id;
				
				$('#name').val(getArray.name);
				
				$('#update').show();
				$('#save').hide();	
			}
		})
	});
	
	$('#update').on('click', function(){
		var name = $('#name').val();
		
		
		$.ajax({
			url: 'update_query.php',
			type: 'POST',
			data: {
				id: brand_id,
				name: name
			},
			success: function(){
				DisplayData();
				$('#name').val('');
				
				alert("Successfully Updated!");
				
				$('#update').hide();
				$('#save').show();	
				
				brand_id = "";
			}
		});
	});
});