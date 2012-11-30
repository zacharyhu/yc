<?php
/* @var $this DailyGameController */
/* @var $model DailyGame */

$this->breadcrumbs=array(
	//'Daily Games'=>array('index'),
	'查看游戏点消耗数据',
);

$this->menu=array(
	array('label'=>'查看每日充值数据', 'url'=>array('/dailyCash/admin')),
	//array('label'=>'Create DailyGame', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('daily-game-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>各游戏每天游戏点消耗数据</h1>

<p>
可以使用下列比较符号进行筛选 (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>)  如 在日期框输入'<121110'敲回车搜索12年11月10 以前数据
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'daily-game-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		//'id',
		'l_date',
        'l_game_points',
		//'l_game_id',
		//'l_game_name',
		array('name'=>'l_game_name','filter'=>DailyGame::model()->getGameNameList()),		
		'l_total_num',
		'l_user_num',		
		'l_avg_num',
		'l_source',
		//'l_cash_sum',
		//只允许查看
		//array(
		//	'class'=>'CButtonColumn',
		//),
	),
)); ?>
