function get_requested_by_information() {

    let empNameId = $("#req_by").val();


    $.ajax({
        url: baseUrl + "includes/issue_process.php?request_type=requested_by_info",
        type: 'POST',
        dataType: 'json',
        data: 'emp_name_id=' + empNameId,
        success: function(response) {


            $("#req_by_division").val(response.division);
            $("#department_id").val(response.department);
            $("#designation").val(response.designation);
            $("#emp_name").val(response.emp_name);


        }
    });

}