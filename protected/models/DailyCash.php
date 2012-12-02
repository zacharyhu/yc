<?php

/**
 * This is the model class for table "gp_data_daily_cash".
 *
 * The followings are the available columns in table 'gp_data_daily_cash':
 * @property integer $id
 * @property string $l_date
 * @property integer $l_cash_sum
 * @property string $l_total_num
 * @property string $l_avg
 * @property integer $l_type
 */
class DailyCash extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return DailyCash the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'gp_data_daily_cash';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('l_date, l_cash_sum, l_total_num, l_avg, l_type', 'required'),
			array('l_cash_sum, l_type', 'numerical', 'integerOnly'=>true),
			array('l_date, l_avg', 'length', 'max'=>10),
			array('l_total_num', 'length', 'max'=>10),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, l_date, l_cash_sum, l_total_num, l_type', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'l_date' => '日期',
			'l_cash_sum' => '总金额',
			'l_total_num' => '总人数',
			'l_avg' => '人均',
			'l_type' => '充值来源',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		//$criteria->compare('id',$this->id);
		$criteria->compare('l_date',$this->l_date,true);
		$criteria->compare('l_cash_sum',$this->l_cash_sum);
		$criteria->compare('l_total_num',$this->l_total_num,true);
		$criteria->compare('l_avg',$this->l_avg,true);
		$criteria->compare('l_type',$this->l_type);

		return new CActiveDataProvider($this, array(
			'pagination'=>array(
				'pageSize'=>20,//设置每页显示20条
			),
			'sort'=>array(
					'defaultOrder'=>'l_date DESC,l_type desc', //设置默认排序是createTime倒序
			),
			'criteria'=>$criteria,
		));
	}
}