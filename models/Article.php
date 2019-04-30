<?php
namespace app\models;
use yii\db\ActiveRecord;

class Article extends ActiveRecord
{
    public static function tableName()
    {
        return 'article';
    }


//    public function attributes()
//    {
//        return [
//          'id' => '编号',
//          'cate_id' => '类型',
//          'title' => '标题',
//          'num' => '阅读量'
//        ];
//    }

//    public function rules()
//    {
//        return [
//
//        ];
//    }
}