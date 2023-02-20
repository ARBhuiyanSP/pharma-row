<?php include 'header.php' ?>
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.0.0/css/buttons.dataTables.min.css">
    <script src="https://cdn.datatables.net/buttons/2.0.0/js/dataTables.buttons.min.js"></script>
    <script src="js/script.js"></script>
    <style>
        .ui-widget-content {
			max-height: 500px;

		}
		button.dt-button.btn-primary{
            background:var(--bs-primary)!important;
            color:white;
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
            Test Crud</div>
        <div class="card-body">
            <div class="row">
				<div class="col-md-12" id="msg"></div>
				<div class="col-md-12">
					<table class="table table-hover table-bordered table-striped" id="authors-tbl">
						<thead>
							<tr class="bg-dark text-light bg-gradient bg-opacity-150">
								<th class="px-1 py-1 text-center">#</th>
								<th class="px-1 py-1 text-center">First Name</th>
								<th class="px-1 py-1 text-center">Last Name</th>
								<th class="px-1 py-1 text-center">Email</th>
								<th class="px-1 py-1 text-center">Birth Date</th>
								<th class="px-1 py-1 text-center">Action</th>
							</tr>
						</thead>
						<tfoot>
							<tr class="bg-dark text-light bg-gradient bg-opacity-150">
								<th class="px-1 py-1 text-center">#</th>
								<th class="px-1 py-1 text-center">First Name</th>
								<th class="px-1 py-1 text-center">Last Name</th>
								<th class="px-1 py-1 text-center">Email</th>
								<th class="px-1 py-1 text-center">Birth Date</th>
								<th class="px-1 py-1 text-center">Action</th>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->
    <!-- Add Modal -->
    <div class="modal fade" id="add_modal" data-bs-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Add Author</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <form action="" id="new-author-frm">
                            <div class="form-group">
                                <label for="first_name" class="control-label">First Name</label>
                                <input type="text" class="form-control rounded-0" id="first_name" name="first_name" required>
                            </div>
                            <div class="form-group">
                                <label for="last_name" class="control-label">Last Name</label>
                                <input type="text" class="form-control rounded-0" id="last_name" name="last_name" required>
                            </div>
                            <div class="form-group">
                                <label for="email" class="control-label">Email</label>
                                <input type="text" class="form-control rounded-0" id="email" name="email" required>
                            </div>
                            <div class="form-group">
                                <label for="birthdate" class="control-label">Date of Birth</label>
                                <input type="date" class="form-control rounded-0" id="birthdate" name="birthdate" required>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" form="new-author-frm">Save</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- /Add Modal -->
    <!-- Edit Modal -->
   
    <div class="modal fade" id="edit_modal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Author's Details</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <form action="" id="edit-author-frm">
                            <input type="hidden" name="id">
                            <div class="form-group">
                                <label for="first_name" class="control-label">First Name</label>
                                <input type="text" class="form-control rounded-0" id="first_name" name="first_name" required>
                            </div>
                            <div class="form-group">
                                <label for="last_name" class="control-label">Last Name</label>
                                <input type="text" class="form-control rounded-0" id="last_name" name="last_name" required>
                            </div>
                            <div class="form-group">
                                <label for="email" class="control-label">Email</label>
                                <input type="text" class="form-control rounded-0" id="email" name="email" required>
                            </div>
                            <div class="form-group">
                                <label for="birthdate" class="control-label">Date of Birth</label>
                                <input type="date" class="form-control rounded-0" id="birthdate" name="birthdate" required>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" form="edit-author-frm">Save</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- /Edit Modal -->
    <!-- Delete Modal -->
    <div class="modal fade" id="delete_modal" data-bs-backdrop="static">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Confirm</h5>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <form action="" id="delete-author-frm">
                            <input type="hidden" name="id">
                            <p>Are you sure to delete <b><span id="name"></span></b> from the list?</p>
                        </form>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-danger" form="delete-author-frm">Yes</button>
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">No</button>
                </div>
            </div>
        </div>
    </div>
    <!-- /Delete Modal -->
	
<?php include 'footer.php' ?>
<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>