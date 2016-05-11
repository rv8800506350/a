<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\TransportRoute */

$this->title = Yii::t('app', 'Update {modelClass}: ', [
    'modelClass' => 'Transport Route',
]) . $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Transport Routes'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="transport-route-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
