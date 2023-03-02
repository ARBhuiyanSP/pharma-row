<?php 
include 'header.php';
?>
<!-- Left Sidebar End -->
<!--<script src="https://code.jquery.com/jquery-1.12.4.js"></script>-->
<!--<link href="css/form-entry.css" rel="stylesheet">-->
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="dashboard.php">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Product Entry</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            New Product Entry</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_name" id="add_name" onsubmit="return Validate(this);">
                    <div class="row" id="div1" style="">
                        <div class="col-xs-12 col-sm-6 col-md-2">
                            <div class="form-group">
                                <label for="id">Product name</label>
                                <input type="text" autocomplete="off" name="name" id="" class="form-control" value="">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-1">
                            <div class="form-group">
                                <label for="id">Alert Qty</label>
                                <input type="text" autocomplete="off" name="alert_qty" id="" class="form-control" value="">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-2">
                            <div class="form-group">
                                <label for="id">Brand/Company</label>
                                <select class="form-control select2" id="brand" name="brand" required>
                                    <option value="">Select</option>
                                    <?php
                                    $projectsData = getTableDataByTableName('brands');

                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?>
                                            <option value="<?php echo $data['id']; ?>"><?php echo $data['name']; ?></option>
                                            <?php
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-2">
                            <div class="form-group">
                                <label for="id">Type/Item</label>
                                <select class="form-control select2" id="type" name="type" required>
                                    <option value="">Select</option>
                                    <?php
                                    $projectsData = getTableDataByTableName('types');

                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?>
                                            <option value="<?php echo $data['id']; ?>"><?php echo $data['name']; ?></option>
                                            <?php
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-2">
                            <div class="form-group">
                                <label for="id">Categories</label>
                                <select class="form-control select2" id="" name="category" required>
                                    <option value="">Select</option>
                                    <?php
                                    $projectsData = getTableDataByTableName('categories');

                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?>
                                            <option value="<?php echo $data['id']; ?>"><?php echo $data['parentcat'] ?> - <?php echo $data['name'] ?></option>
                                            <?php
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-1">
                            <div class="form-group">
                                <label for="id">Rak No</label>
                                <input type="text" autocomplete="off" name="rak_no" id="" class="form-control" value="">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-2">
                            <div class="form-group">
                                <label for="id">Ref. No</label>
                                <input type="text" autocomplete="off" name="ref_no" id="" class="form-control" value="">
                            </div>
                        </div>
                    </div>
                    <div class="row" style="">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <label>Remarks</label>
                                <textarea id="remarks" name="remarks" class="form-control" required></textarea>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <input type="submit" name="product_submit" id="product_submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />   
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <!--here your code will go-->
        </div>
    </div>

</div>

<!-- /.container-fluid -->
<script>
    $(document).ready(function () {

        $('#submit').click(function () {
            $.ajax({
                url: "name.php",
                method: "POST",
                data: $('#add_name').serialize(),
                success: function (data)
                {
                    alert(data);
                    $('#add_name')[0].reset();
                }
            });
        });

    });

</script>
<script>
    $(function () {
        $("#mrr_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<script>
    $(function () {
        $("#challan_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<script>
    $(function () {
        $("#requisition_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<?php include 'footer.php' ?>