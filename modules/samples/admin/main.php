<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2020 VINADES.,JSC. All rights reserved
 * @License: Not free read more http://nukeviet.vn/vi/store/modules/nvtools/
 * @Createdate Sat, 31 Oct 2020 02:20:33 GMT
 */
include "connect.php";

if (!defined('NV_IS_FILE_ADMIN')) {
    die('Stop!!!');
}
if ($nv_Request->isset_request("change_province", "post,get")) {
    $id_province = $nv_Request->get_int('id_province', 'post,get', 0);
    if ($id_province > 0) {
        $district_change = "SELECT * FROM nv4_vi_location_district WHERE idprovince = " . $id_province . " ORDER BY weight ASC ";
        $id_district = mysqli_query($conn, $district_change);
        $html = '<option value="0">Chọn Huyện</option>';
        while ($province = $id_district->fetch_array()) {
            $html .= '<option value="' . $province['id'] . '">' . $province['title'] . '</option>';
        }
        die($html);
    } else {
        die("err");
    }
}
$page_title = $lang_module['main'];
$post = [];
$error = [];
$post['id'] = $nv_Request->get_int('id', 'post,get', 0);
$post['fullname'] = $nv_Request->get_title('fullname', 'post', '');
$post['phone'] = $nv_Request->get_title('phone', 'post', '');
$post['email'] = $nv_Request->get_title('email', 'post', '');
$post['gender'] = $nv_Request->get_title('gender', 'post', '');
$post['province'] = $nv_Request->get_title('province', 'post', '');
$post['district'] = $nv_Request->get_title('district', 'post', '');
// $post['note'] = $nv_Request->get_textarea('note', 'post', '', NV_ALLOWED_HTML_TAGS);
$post['submit'] = $nv_Request->get_title('submit', 'post', '');
if (!empty($post['submit'])) {

    if (empty($post['fullname'])) {
        $error[] = $lang_module['fullname'];
    }
    if (empty($post['phone'])) {
        $error[] = $lang_module['phone'];
    }
    // elseif (!preg_match("/^[0-9]{10}$/i", $post['phone'])) {
    //     $error[] = "Số điện thoại chưa đúng !";
    // }
    // $check_phone = "/^[0-9]{10}$/i";
    // $str = "";
    // if (preg_match_all($check_phone, $str, $post['phone']) == false) {
    //     $error[] = $lang_module['phone'];
    //     print_r($post['phone']);
    // }

    if (empty($post['email'])) {
        $error[] = $lang_module['email'];
    }
    // elseif (!preg_match("/^(.*?)@(.*?)$/", $post['email'])) {
    //     $error[] = $lang_module['email'];
    // }
    if (empty($post['gender'])) {
        $error[] = $lang_module['gender'];
    }
    if (empty($error)) {
        if ($post['id'] > 0) {
            // update
            $sql = "UPDATE `nv4_vi_samples` SET
            fullname=:fullname,phone=:phone,email=:email,gender=:gender,province=:province,district=:district,updatetime=:updatetime WHERE id = " . $post['id'];
            $s = $db->prepare($sql);
            $s->bindValue('updatetime', 0);
        } else {
            //  Insert
            $sql = "INSERT INTO `nv4_vi_samples`
            (`fullname`, `phone`,`email`,`gender`,`province`,`district`,`active`, `addtime`,`weight`) 
            VALUES (:fullname, :phone, :email, :gender, :province, :district, :active, :addtime, :weight)";
            $s = $db->prepare($sql);
            $s->bindValue('active', 1);
            $s->bindValue('weight', 1);
            $s->bindValue('addtime', NV_CURRENTTIME);
        }
        $s->bindParam('fullname', $post['fullname']);
        $s->bindParam('phone', $post['phone']);
        $s->bindParam('email', $post['email']);
        $s->bindParam('gender', $post['gender']);
        $s->bindParam('province', $post['province']);
        $s->bindParam('district', $post['district']);
        // $s->bindParam('note', $post['note']);
        $exe = $s->execute();

        if ($post['id'] > 0) {
            $error[] = "Update ok!";
        } else {
            $error[] = "Insert ok !";
        }
    }
} else {
    $post['fullname'] = "";
    $post['phone'] = "";
    $post['email'] = "";
    $post['gender'] = 1;
    $post['province'] = "";
    $post['district'] = "";
    $post['note'] = "";
}
if ($post['id'] > 0) {

    $sql = "SELECT * FROM `nv4_vi_samples` WHERE id = "  . $post['id'];
    $post =  $db->query($sql)->fetch();
}



//------------------------------
// Viết code xử lý chung vào đây
//------------------------------

// try {
//     $sql = "SELECT * FORM 'nv4_vi_location_province' ORDER BY weight ASC ";
//     $result = $db->query($sql);

//     while ($province = $result->fetch()) {
//         print_r($province);
//         die;
//     }
// } catch (PDOException $e) {
//     print_r($e);
//     die;
// }
$arr_province = [];
while ($province = $query->fetch_array()) {

    $arr_province[$province['id']] = $province;
}

$xtpl = new XTemplate('main.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$xtpl->assign('LANG', $lang_module);
$xtpl->assign('NV_LANG_VARIABLE', NV_LANG_VARIABLE);
$xtpl->assign('NV_LANG_DATA', NV_LANG_DATA);
$xtpl->assign('NV_BASE_ADMINURL', NV_BASE_ADMINURL);
$xtpl->assign('NV_NAME_VARIABLE', NV_NAME_VARIABLE);
$xtpl->assign('NV_OP_VARIABLE', NV_OP_VARIABLE);
$xtpl->assign('MODULE_NAME', $module_name);
$xtpl->assign('OP', $op);
$xtpl->assign('Error', implode('<br>', $error));
$xtpl->assign('POST', $post);



foreach ($arr_gender as $key => $gender) {
    $xtpl->assign('GENDER', array(
        'key' => $key,
        'title' => $gender,
        "checked" => $key == $post['gender'] ? 'checked' : ''
    ));
    $xtpl->parse('main.gender');
}
foreach ($arr_province as $key => $province) {
    $xtpl->assign('PROVINCE', array(
        'key' => $key,
        'title' => $province['title'],
        "selceted" => $key == $post['province'] ? 'selceted' : ''
    ));
    $xtpl->parse('main.province');
}

foreach ($query as $query) {
    // Sử dụng assign, gán giá trị $array cho DATA
    $xtpl->assign('query', $query);
    $xtpl->parse('main.loop_query');
}
foreach ($qr_district as $qr_district) {
    // Sử dụng assign, gán giá trị $array cho DATA
    $xtpl->assign('qr_district', $qr_district);
    $xtpl->parse('main.loop_qr_district');
}


//-------------------------------
// Viết code xuất ra site vào đây
//-------------------------------
if (!empty($error)) {
    $xtpl->parse('main.error');
}

$xtpl->parse('main');
$contents = $xtpl->text('main');


include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';