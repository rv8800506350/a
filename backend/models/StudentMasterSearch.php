<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\StudentMaster;

/**
 * StudentMasterSearch represents the model behind the search form about `backend\models\StudentMaster`.
 */
class StudentMasterSearch extends StudentMaster
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'from_session', 'to_session'], 'integer'],
            [['name', 'do', 'gender', 'photo', 'contact', 'addmission_no'], 'safe'],
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
        $query = StudentMaster::find();

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
            'do' => $this->do,
            'from_session' => $this->from_session,
            'to_session' => $this->to_session,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'gender', $this->gender])
            ->andFilterWhere(['like', 'photo', $this->photo])
            ->andFilterWhere(['like', 'contact', $this->contact])
            ->andFilterWhere(['like', 'addmission_no', $this->addmission_no]);

        return $dataProvider;
    }
}
