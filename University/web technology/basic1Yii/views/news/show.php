<?php

use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
use yii\helpers\Html;

$this->registerCssFile('@web/css/news.css', ['depends' => 'yii\web\YiiAsset']);
$this->registerJsFile('@web/js/basic.js', ['depends' => 'yii\web\YiiAsset']);
?>
<h2 class="main">Новости</h2>
<div class="news">
    <div class="title"><?php
        echo $title; ?></div>
    <div class="text"><?php
        echo $text; ?></div>
</div>



<div class="form">
    <?php

    $form = ActiveForm::begin();
    echo '<h4 class="addnws">Добавить новость:</h4>';
    echo $form->field($model, 'title')->label('Заголово статьи');
    echo $form->field($model, 'text')->label('Текст статьи')->textarea(['rows' => 10, 'cols' => 5]);

    echo '<label class="control-label">Дата публикации статьи</label>';
    echo DatePicker::widget([
        'name' => 'dateP',
        'language' => 'ru',
        'type' => DatePicker::TYPE_COMPONENT_PREPEND,
        'options' => ['placeholder' => 'Выберите дату статьи ...'],
        'pluginOptions' => [
            'autoclose' => true,
            'format' => 'mm/dd/yyyy'
        ]
    ]);
    ?>
     <div class="form-group subbtncl">
        <?= Html::submitButton('Опубликовать', ['class' => 'btn btn-primary subbtn', ]) ?>
</div>

    <?php ActiveForm::end(); ?>




</div>
