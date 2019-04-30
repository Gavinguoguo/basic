<?php

namespace app\models;

use Yii;

class Author extends \yii\db\ActiveRecord
{
    public static function tableName()
    {
        return '{{%author}}';
    }

    public function rules()
    {
        return[
            [['auid','sex'],'integer'],
            [['author'],'string','max'=>50]
        ];
    }

    public function attributeLabels()
    {

        return [
            'auid'=> '作者id',
            'author' => '作者',
            'sex' => '性别'
        ];
    }

    public function getSexs(){
        return $this->sex == 1 ? '男':'女';
    }

    public function setSexs($value){
        $this->sex = $value;
    }
}