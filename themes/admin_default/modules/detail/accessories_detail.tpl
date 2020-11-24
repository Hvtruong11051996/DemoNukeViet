<!-- BEGIN: main -->
<form
    action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}"
    method="post">
    <table class="table table-striped table-bordered table-hover">
        <tr class="text-center">
            <th class="text-nowrap text-center" style="width: 100px;">Thứ tự</th>
            <th class="text-nowrap text-center">Tên Phụ kiện</th>
            <th class="text-nowrap text-center">Slug</th>
            <!-- <th class="text-nowrap text-center">Ảnh</th> -->
            <th class="text-nowrap text-center">Mô tả</th>
            <th class="text-center text-nowrap">Chức năng</th>
        </tr>
        </thead>
        <tbody>
            <!-- BEGIN: accessories_detail -->
            <tr class="text-center">
                <td class="text-center">
                    <select onchange="nv_change_weight({AD.id})" class="form-control weight_{AD.id}" name="weight"
                        id="">
                        <!-- BEGIN: stt -->
                        <option value="{J}" {J_SELECT}>{J}</option>
                        <!-- END: stt -->
                    </select>
                </td>
                <!-- <td></td> -->
                <td>{AD.accessories_id}</td>
                <td>{AD.slug}</td>
                <td>{AD.description}</td>
                <td class="text-center text-nowrap">
                    <a href="{AD.url_edit}" class="btn btn-default btn-sm"><i class="fa fa-edit"></i> Sửa</a>
                    <a href="{AD.url_delete}" class="btn btn-danger btn-sm delete"><i class="fa fa-trash-o"></i>
                        Xóa</a>
                </td>
            </tr>
            <!-- END: accessories_detail -->
        </tbody>
    </table>
    <div style="text-align: center;">
        {GP}
    </div>
</form>
<script>
// ==== Xóa dữ liệu  ===== //
$(document).ready(function() {
    $('.delete').click(function() {
        if (confirm("Bạn có chắc chắn muốn xóa?")) {
            return true;
        } else {
            return false;
        }
    });

});
// ================================ //

// ==== Thay đổi số thứ tự ===== //
function nv_change_weight(id) {
    var new_weight = $('.weight_' + id).val();
    $.ajax({
        url: script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable +
            '=accessories_detail&change_weight=2&id=' + id + '&new_weight=' + new_weight,
        success: function(result) {
            if (result != "Error") {
                location.reload();
            }
        }
    })
}
// ================================ //
</script>


<!-- END: main -->