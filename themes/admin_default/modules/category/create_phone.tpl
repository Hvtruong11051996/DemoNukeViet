<!-- BEGIN: main -->
<!-- BEGIN: error -->
<div class='alert alert-warning' role="alert">{Error}</div>
<!-- END: error -->
<form
    action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}"
    method="post" enctype='multipart/form-data'>
    <input type="hidden" class="form-control" name="student_id" value="">

    <div class="container">
        <div class="form-group">
            <label for=""><strong>Tên điện thoại : </strong> </label>
            <input type="text" class="form-control" name="name" value="">
        </div>
        <div class="form-group">
            <label for=""><strong>Slug : </strong> </label>
            <input type="text" class="form-control" name="slug" value="">
        </div>
        <div class="form-group">
            <label for=""><strong>Mô tả : </strong></label>
            <textarea name="description" class="form-control" rows="3"></textarea>
        </div>
        <!-- <div class="form-group">
            <label><strong>Image : </strong></label>
            <input type="file" name="avatar">
        </div> -->

        <div class="form-group">
            <label for=""><strong>Giá : </strong></label>
            <input type="text" class="form-control" name="price" value="">
        </div>
        <div class="form-group">
            <label for=""><strong>Sale : </strong></label>
            <input type="text" class="form-control" name="sell_price" value="">
        </div>
        <div class="form-group">
            <label for=""><strong>Hãng : </strong></label>
            <select name="category_id" id="category" class="form-control">
                <option value="">--- Chọn Hãng điện thoại ---</option>
                <!-- BEGIN: category -->
                <option value="{CG.id}">{CG.name}</option>
                <!-- END: category -->

            </select>
        </div>

        <div class="text-center">
            <input class="btn btn-primary" name="submit" type="submit" value="submit" />
        </div>

    </div>
</form>

<!-- END: main -->