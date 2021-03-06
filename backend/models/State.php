<?php

namespace backend\models;

use Yii;
use yii\db\Expression;
//use yii\behaviours\TimestampBehavior;

/**
 * This is the model class for table "_state".
 *
 * @property integer $id
 * @property string $name

 * @property District[] $districts
 */
class State extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '_state';
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
           
            [['name'], 'string', 'max' => 90],
            [['name'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'name' => Yii::t('app', 'Name'),
//            'created_at' => Yii::t('app', 'Created At'),
  //          'updated_at' => Yii::t('app', 'Updated At'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDistricts()
    {
        return $this->hasMany(District::className(), ['state_id' => 'id']);
    }
}
