<!-- BEGIN: main -->
<form
    action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}"
    method="post">
    <div style="color: red;">
        <h1><strong>Danh mục Điện thoại</strong></h1>
    </div>
    <table style="margin-top: 30px;" class="table table-striped table-bordered table-hover">
        <tr class="text-center">
            <th class="text-nowrap text-center">Thứ tự</th>
            <th class="text-nowrap text-center">Tên hãng</th>
            <th class="text-nowrap text-center">Ảnh</th>
            <th class="text-nowrap text-center">Mô tả</th>
            <th class="text-center text-nowrap">Chức năng</th>
        </tr>
        </thead>
        <tbody>
            <!-- BEGIN: category -->
            <tr>
                <td class="text-center">
                </td>
                <td class="text-center"><strong>{CG.name}</strong></td>
                <td class="text-center"></td>
                <td class="text-center">{CG.description}</td>
                <td class="text-center text-nowrap">
                    <a href="{CG.url_edit}" class="btn btn-default btn-sm"><i class="fa fa-edit"></i> Sửa</a>
                    <a href="{CG.url_delete}" class="btn btn-danger btn-sm delete"><i class="fa fa-trash-o"></i>
                        Xóa</a>
                </td>
            </tr>
            <!-- END: category -->
        </tbody>
    </table>


    <div style="color: red;">
        <h1><strong>Danh mục Phụ kiện</strong></h1>
    </div>
    <table style="margin-top: 30px;" class="table table-striped table-bordered table-hover">
        <tr class="text-center">
            <th class="text-nowrap text-center">Thứ tự</th>
            <th class="text-nowrap text-center">Danh mục phụ kiện</th>
            <th class="text-nowrap text-center">Ảnh</th>
            <th class="text-nowrap text-center">Mô tả</th>
            <th class="text-center text-nowrap">Chức năng</th>
        </tr>
        </thead>
        <tbody>
            <!-- BEGIN: list_accessories -->
            <tr>
                <td class="text-center">
                    <select onchange="" class="form-control weight_{LIST.id}" name="weight" id="">
                        <!-- BEGIN: stt_accessories -->
                        <option value=""></option>
                        <!-- END: stt_accessories -->
                    </select>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td class="text-center text-nowrap">
                    <a href="{CG.url_edit}" class="btn btn-default btn-sm"><i class="fa fa-edit"></i> Sửa</a>
                    <a href="{CG.url_delete}" class="btn btn-danger btn-sm delete"><i class="fa fa-trash-o"></i>
                        Xóa</a>
                </td>
            </tr>
            <!-- END: list_accessories -->
        </tbody>
    </table>
    <div style="text-align: center;">

    </div>

</form>
<script>
$(document).ready(function() {
    $('.delete').click(function() {
        if (confirm("Bạn có chắc chắn muốn xóa?")) {
            return true;
        } else {
            return false;
        }
    });

});
</script>


<!-- END: main -->