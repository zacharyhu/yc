<?php
/* @var $this DailyCashController */
/* @var $model DailyCash */

$this->breadcrumbs=array(
	'Manage',
);

$this->menu=array(
	//array('label'=>'List DailyCash', 'url'=>array('index')),
	//array('label'=>'Create DailyCash', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('daily-cash-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>每日充值数据</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('高级搜索','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'daily-cash-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		//'id',
		'l_date',
		'l_cash_sum',
		'l_total_num',
		'l_avg',
        array('name'=>'l_type','value'=>'GpCp::model()->getCpName($data->l_type)','filter'=>GpCp::model()->getCpList()),
		//'l_type',
		/*array(
			'class'=>'CButtonColumn',
		),*/
	),
)); ?>
