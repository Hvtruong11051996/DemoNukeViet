<!-- BEGIN: main -->
<form
    action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}"
    method="post">
    <table class="table table-striped table-bordered table-hover">
        <tr class="text-center">
            <th class="text-nowrap text-center">Thứ tự</th>
            <th class="text-nowrap text-center">Tên điện thoại</th>
            <th class="text-nowrap text-center">Tên không dấu</th>
            <th class="text-nowrap text-center">Mô tả</th>
            <th class="text-nowrap text-center">Giá</th>
            <th class="text-nowrap text-center">Khuyến mãi</th>
            <th class="text-nowrap text-center">Hãng</th>
            <th class="text-center text-nowrap">Chức năng</th>
        </tr>
        </thead>
        <tbody>
            <!-- BEGIN: products -->
            <tr>
                <td class="text-center">
                </td>
                <td class="text-center"><strong>{PD.name}</strong></td>
                <td class="text-center">{PD.slug}</td>
                <td class="text-center">{PD.description}</td>
                <td class="text-center">{PD.price}</td>
                <td class="text-center">{PD.sell_price}</td>
                <td class="text-center">{PD.cate}</td>
                <td class="text-center text-nowrap">
                    <a href="{PD.url_edit}" class="btn btn-default btn-sm"><i class="fa fa-edit"></i> Sửa</a>
                    <a href="{PD.url_delete}" class="btn btn-danger btn-sm delete"><i class="fa fa-trash-o"></i>
                        Xóa</a>
                </td>
            </tr>
            <!-- END: products -->
        </tbody>
    </table>
    <div style="text-align: center;">

    </div>

</form>


<!-- END: main -->