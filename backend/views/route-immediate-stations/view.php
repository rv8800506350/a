<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\RouteImmediateStations */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Route Immediate Stations'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="route-immediate-stations-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
           // 'route_id',
            [
                'attribute'=>'route_id',
                'value'=>$model->route->end_point,
            ],
            'name',
           // 'created_at',
           // 'updated_at',
        ],
    ]) ?>

</div>
