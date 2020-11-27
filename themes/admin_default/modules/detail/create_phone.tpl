<!-- BEGIN: main -->
<!-- BEGIN: error -->
<div class='alert alert-warning' role="alert">{Error}</div>
<!-- END: error -->
<form
    action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}"
    method="post" enctype='multipart/form-data'>
    <input type="hidden" class="form-control" name="id" value="{POST.id}">

    <div class="container">
        <div class="form-group">
            <label for=""><strong>Tên điện thoại : </strong></label>
            <select name="product_id" id="product_id" class="form-control">
                <option value="{POST.product_id}">--- Chọn điện thoại ---</option>
                <!-- BEGIN: products -->
                <option value="{PD.product_id}">{PD.name}</option>
                <!-- END: products -->

            </select>
        </div>
        <!-- <div class="form-group">
            <label><strong>Ảnh : </strong></label>
            <input type="file" name="avatar">
        </div> -->
        <div class="form-group">
            <label for=""><strong>Màn hình : </strong> </label>
            <input type="text" class="form-control" name="screen" value="{POST.screen}">
        </div>
        <div class="form-group">
            <label for=""><strong>Hệ điều hành : </strong> </label>
            <input type="text" class="form-control" name="operating" value="{POST.operating}">
        </div>
        <div class="form-group">
            <label for=""><strong>Camera trước : </strong></label>
            <input type="text" class="form-control" name="front_camera" value="{POST.front_camera}">
        </div>
        <div class="form-group">
            <label for=""><strong>Camera sau : </strong></label>
            <input type="text" class="form-control" name="rear_camera" value="{POST.rear_camera}">
        </div>
        <div class="form-group">
            <label for=""><strong>CPU : </strong></label>
            <input type="text" class="form-control" name="cpu" value="{POST.cpu}">
        </div>
        <div class="form-group">
            <label for=""><strong>RAM : </strong> </label>
            <input type="text" class="form-control" name="ram" value="{POST.ram}">
        </div>
        <div class="form-group">
            <label for=""><strong>Thẻ nhớ : </strong></label>
            <input type="text" class="form-control" name="internal_memory" value="{POST.internal_memory}">
        </div>
        <div class="form-group">
            <label for=""><strong>SIM : </strong></label>
            <input type="text" class="form-control" name="sim" value="{POST.sim}">
        </div>
        <div class="form-group">
            <label for=""><strong>Dung lượng pin : </strong></label>
            <input type="text" class="form-control" name="battery_capacity" value="{POST.battery_capacity}">
        </div>

        <div class="text-center">
            <input class="btn btn-primary" name="submit" type="submit" value="submit" />
        </div>

    </div>
</form>

<!-- END: main -->