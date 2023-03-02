$(document).ready(function(){
	var cat_id;
	
	DisplayData();
	
	$('#update').hide();
	
	$('#save').on('click', function(){
		if($('#name').val() == ""){
			alert("Hello World");
		}else{
			var name = $('#name').val();
			var parentcat = $('#parentcat').val();
			
			$.ajax({
				url: 'includes/cat_process.php',
				type: 'POST',
				data: {
					saved: 1,
					name: name,
					parentcat: parentcat
				},
				success: function(data){
					 $('#name').val('');
					 $('#parentcat').val('');
					 DisplayData();
				}
			});
		}
		
	});
	
	function DisplayData(){
		$.ajax({
			url: 'includes/cat_process.php',
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
			url: 'includes/cat_process.php',
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
				$('#parentcat').val('');
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
			url: 'includes/cat_process.php',
			type: 'POST',
			data: {
				id: id
			},
			success: function(response){
				var getArray = jQuery.parseJSON(response);
				
				cat_id = getArray.id;
				
				$('#name').val(getArray.name);
				$('#parentcat').val(getArray.parentcat);
				
				$('#update').show();
				$('#save').hide();	
			}
		})
	});
	
	$('#update').on('click', function(){
		var name = $('#name').val();
		var parentcat = $('#parentcat').val();
		
		
		$.ajax({
			url: 'includes/cat_process.php',
			type: 'POST',
			data: {
				updated: 1,
				id: cat_id,
				name: name,
				parentcat: parentcat
			},
			success: function(){
				DisplayData();
				$('#name').val('');
				$('#parentcat').val('');
				
				alert("Successfully Updated!");
				
				$('#update').hide();
				$('#save').show();	
				
				id = "";
			}
		});
	});
});