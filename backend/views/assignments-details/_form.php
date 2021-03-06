<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\AssignmentsDetails */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="assignments-details-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'assignment_id')->textInput() ?>

    <?= $form->field($model, 'task')->textInput() ?>

    <?= $form->field($model, 'user_id')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
