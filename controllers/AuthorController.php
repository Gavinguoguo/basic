<?php
namespace app\controllers;
use app\models\Author;
use yii\web\Controller;

class AuthorController extends Controller
{
    public function actionIndex(){
        $auth= Author::find();
        $authors = $auth->one();
        $data ['id'] = $authors->auid;
        $data ['author'] = $authors->author;
        $data ['sex'] = $authors->sexs;
        dd($data);
    }
}