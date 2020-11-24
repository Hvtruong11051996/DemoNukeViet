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

$page_title = $lang_module['create_phone'];

//------------------------------
// Viết code xử lý chung vào đây
$post = [];
$error = [];
$post['product_id'] = $nv_Request->get_int('product_id', 'post,get', 0);
$post['name'] = $nv_Request->get_title('name', 'post', '');
$post['slug'] = $nv_Request->get_title('slug', 'post', '');
$post['description'] = $nv_Request->get_textarea('description', 'post', '', NV_ALLOWED_HTML_TAGS);
$post['price'] = $nv_Request->get_title('price', 'post', '');
$post['sell_price'] = $nv_Request->get_title('sell_price', 'post', '');
$post['category_id'] = $nv_Request->get_title('category_id', 'post', '');
$post['submit'] = $nv_Request->get_title('submit', 'post', '');

if (!empty($post['submit'])) {

    if (empty($post['name'])) {
        $error[] = $lang_module['name'];
    }
    if (empty($post['slug'])) {
        $error[] = $lang_module['slug'];
    }

    if (empty($error)) {
        if ($post['product_id'] > 0) {
            // update
            $sql = "UPDATE `shop_products` SET
            name=:name,slug=:slug,description=:description,price=:price,sell_price=:sell_price,category_id=:category_id,updatetime=:updatetime WHERE product_id = " . $post['product_id'];
            $s = $db->prepare($sql);
            $s->bindValue('updatetime', 0);
        } else {
            //  Insert
            $sql = "INSERT INTO `shop_products`
            (`name`, `slug`,`description`,`price`,`sell_price`,`category_id`, `addtime`,`weight`) 
            VALUES (:name, :slug, :description, :price, :sell_price, :category_id, :addtime, :weight)";
            $s = $db->prepare($sql);
            $s->bindValue('weight', 1);
            $s->bindValue('addtime', NV_CURRENTTIME);
        }
        $s->bindParam('name', $post['name']);
        $s->bindParam('slug', $post['slug']);
        $s->bindParam('description', $post['description']);
        $s->bindParam('price', $post['price']);
        $s->bindParam('sell_price', $post['sell_price']);
        $s->bindParam('category_id', $post['category_id']);
        $exe = $s->execute();

        if ($post['product_id'] > 0) {
            $error[] = "Update ok!";
        } else {
            $error[] = "Insert ok !";
        }
    }
}

// ============= Edit dữ liệu ============ //
if ($post['product_id'] > 0) {

    $sql = "SELECT * FROM `shop_products` WHERE product_id = "  . $post['product_id'];
    $post =  $db->query($sql)->fetch();
}

// ====================================== //



//------------------------------

$xtpl = new XTemplate('create_phone.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
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

//-------------------------------
// Viết code xuất ra site vào đây

foreach ($category as $category) {
    // Sử dụng assign, gán giá trị $array cho DATA
    $xtpl->assign('CG', $category);
    $xtpl->parse('main.category');
}







//-------------------------------
if (!empty($error)) {
    $xtpl->parse('main.error');
}

$xtpl->parse('main');
$contents = $xtpl->text('main');

include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';