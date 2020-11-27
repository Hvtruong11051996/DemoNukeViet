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
            <label for=""><strong>Tên phụ kiện : </strong></label>
            <select name="product_id" id="product_id" class="form-control">
                <option value="{POST.product_id}">--- Chọn phụ kiện ---</option>
                <!-- BEGIN: accessories -->
                <option value="{PD.product_id}">{PD.name}</option>
                <!-- END: accessories -->

            </select>
        </div>
        <div class="form-group">
            <label for=""><strong>Slug : </strong> </label>
            <input type="text" class="form-control" name="slug" value="{POST.slug}">
        </div>
        <!-- <div class="form-group">
            <label><strong>Image : </strong></label>
            <input type="file" name="avatar">
        </div> -->
        <div class="form-group">
            <label for=""><strong>Mô tả : </strong></label>
            <textarea name="description" class="form-control" rows="3">{POST.description}</textarea>
        </div>

        <div class="text-center">
            <input class="btn btn-primary" name="submit" type="submit" value="submit" />
        </div>

    </div>
</form>

<!-- END: main -->