<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\EmployeePreviousDetails;

/**
 * EmployeePreviousDetailsSearch represents the model behind the search form about `backend\models\EmployeePreviousDetails`.
 */
class EmployeePreviousDetailsSearch extends EmployeePreviousDetails
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'designation_id'], 'integer'],
            [['employee_id', 'name_of_pervious_org', 'from_date', 'to_date', 'remarks'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = EmployeePreviousDetails::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'from_date' => $this->from_date,
            'to_date' => $this->to_date,
            'designation_id' => $this->designation_id,
        ]);

        $query->andFilterWhere(['like', 'employee_id', $this->employee_id])
            ->andFilterWhere(['like', 'name_of_pervious_org', $this->name_of_pervious_org])
            ->andFilterWhere(['like', 'remarks', $this->remarks]);

        return $dataProvider;
    }
}
