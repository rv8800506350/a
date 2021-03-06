<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Session */

$this->title = Yii::t('app', 'Update {modelClass}: ', [
    'modelClass' => 'Session',
]) . $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Sessions'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="session-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
