<!-- BEGIN: main -->
<form
    action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}"
    method="post">
    <table style="margin-top: 30px;" class="table table-striped table-bordered table-hover">
        <tr class="text-center">
            <th class="text-nowrap text-center">Thứ tự</th>
            <th class="text-nowrap text-center">Tên Điên thoại</th>
            <th class="text-nowrap text-center">Màn hình</th>
            <th class="text-nowrap text-center">Hệ điều hành</th>
            <th class="text-nowrap text-center">Camera trước</th>
            <th class="text-nowrap text-center">Camera sau</th>
            <th class="text-nowrap text-center">CPU</th>
            <th class="text-nowrap text-center">RAM</th>
            <th class="text-nowrap text-center">Thẻ nhớ</th>
            <th class="text-nowrap text-center">SIM</th>
            <th class="text-nowrap text-center">Dung lượng pin</th>
            <th class="text-center text-nowrap">Chức năng</th>
        </tr>
        </thead>
        <tbody>
            <!-- BEGIN: phone_details -->
            <tr class="text-center">
                <td class="text-center">
                    <select onchange="nv_change_weight({DT.id})" class="form-control weight_{DT.id}" name="weight"
                        id="">
                        <!-- BEGIN: stt -->
                        <option value="{J}" {J_SELECT}>{J}</option>
                        <!-- END: stt -->
                    </select>
                </td>
                <td>{DT.product_id}</td>
                <td>{DT.screen}</td>
                <td>{DT.operating}</td>
                <td>{DT.front_camera}</td>
                <td>{DT.rear_camera}</td>
                <td>{DT.cpu}</td>
                <td>{DT.ram}</td>
                <td>{DT.internal_memory}</td>
                <td>{DT.sim}</td>
                <td>{DT.battery_capacity}</td>
                <td class="text-center text-nowrap">
                    <a href="{DT.url_edit}" class="btn btn-default btn-sm"><i class="fa fa-edit"></i> Sửa</a>
                    <a href="{DT.url_delete}" class="btn btn-danger btn-sm delete"><i class="fa fa-trash-o"></i>
                        Xóa</a>
                </td>
            </tr>
            <!-- END: phone_details -->
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
            '=phone_detail&change_weight=2&id=' + id + '&new_weight=' + new_weight,
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