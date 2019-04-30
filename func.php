<?php
/**
 * 打印输入结果
 * @param $data
 */
function dd($data){
    echo '<pre/>';
    var_dump($data);
    die();
}