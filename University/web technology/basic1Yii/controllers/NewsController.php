<?php

namespace app\controllers;

use app\models\NewsForm;
use Yii;
use yii\web\Controller;


class NewsController extends Controller
{


    public function actionShow()
    {

        $title = 'Короновирус побежден!';
        $text = 'По последним данным корона вирус(он же Covid 19) был побежден! Поздравляю, Киборги!';

        $model = new NewsForm();

        return $this->render('Show',
            [
                'title' => $title,
                'text' => $text,
                'model' => $model,
            ]

        );
    }
}
