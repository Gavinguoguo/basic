<?php
namespace app\controllers;
use app\models\Article;
use yii\caching\DbDependency;
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
        /*创建模型实例*/
//        $article = Article::find();
        /*获取表名*/
//        $data = Article::tableName();
        /*使用模型实例查询*/
        // 使用one 和all 查询
//        $data = $article->where('id=:id',[':id' =>'1'])->one();
//        $data = $article->all();
        /*查询结果转化为数组 asArray()*/
//        $data = $article->asArray()->one();
        /*查询id=1的文章*/
//        $data =$article->where(['id'=>2])->asArray()->one();
        /*取出所有cate_id 为1的内容,并id为2的内容*/
//        $data=$article->where([
//            'cate_id'=>1,
//            'id'=>2])
//            ->one();
        /*查询所有cate_id为2的内容，并按照id 降序排列，按照阅读量升序排列*/
//        $data = $article->where([
//                'cate_id'=> 2
//            ])->asArray()
//            ->orderBy('id desc')
//            ->all();
//        $data = Article::findOne(1);
//        $data = $article->one();
        /*修改数据*/
//        $article = Article::find();
//        $data->id = 1;
//        $data->title='儿不嫌母丑！狗不嫌家贫！我把咱爹娘接来了！';
//        $data->cate_id=1;
//        $data->num = 179;
//        $data->auid = 8;
//        $rs = $data->save();
        //打印sql语句
//        $sql = $article->createCommand()->getRawSql();
//        dd($rs);

    }

    public function actionUpdate(){
        $data = Article::find()->one();

        dd($data);
    }
}