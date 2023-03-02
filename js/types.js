$(document).ready(function(){
	var type_id;
	
	DisplayData();
	
	$('#update').hide();
	
	$('#save').on('click', function(){
		if($('#name').val() == ""){
			alert("Hello World");
		}else{
			var name = $('#name').val();
			
			$.ajax({
				url: 'includes/type_process.php',
				type: 'POST',
				data: {
					saved: 1,
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
			url: 'includes/type_process.php',
			type: 'POST',
			data: {
				show: 1
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
			url: 'includes/type_process.php',
			type: 'POST',
			data: {
				deleted: 1,
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
			url: 'includes/type_process.php',
			type: 'POST',
			data: {
				id: id
			},
			success: function(response){
				var getArray = jQuery.parseJSON(response);
				
				type_id = getArray.id;
				
				$('#name').val(getArray.name);
				
				$('#update').show();
				$('#save').hide();	
			}
		})
	});
	
	$('#update').on('click', function(){
		var name = $('#name').val();
		
		
		$.ajax({
			url: 'includes/type_process.php',
			type: 'POST',
			data: {
				updated: 1,
				id: type_id,
				name: name
			},
			success: function(){
				DisplayData();
				$('#name').val('');
				
				alert("Successfully Updated!");
				
				$('#update').hide();
				$('#save').show();	
				
				id = "";
			}
		});
	});
});