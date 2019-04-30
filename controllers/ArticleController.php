<?php
namespace app\controllers;
use app\models\Arcicle;
use yii\web\Controller;

/**
 * Notes:
 * User: Gavin
 * Date: 2019/04/30
 * Time: 10:06
 */
class ArticleController extends Controller
{

    function actionArticle(){
        $article = Arcicle::tableName();
        dd($article);

    }
}