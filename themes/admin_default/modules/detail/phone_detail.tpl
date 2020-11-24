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
            <tr>
                <td class="text-center">
                    <select onchange="" class="form-control" name="weight" id="">
                        <!-- BEGIN: stt_phone -->
                        <option value=""></option>
                        <!-- END: stt_phone -->
                    </select>
                </td>
                <td>{DT.product_id}</td>
                <td>{DT.screen}</td>
                <td>{DT.operating}</td>
                <td>{DT.front_camera}</td>
                <td>{DT.rear_camera}</td>
                <td>{DT.CPU}</td>
                <td>{DT.RAM}</td>
                <td>{DT.internal_memory}</td>
                <td>{DT.SIM}</td>
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

</form>


<!-- END: main -->