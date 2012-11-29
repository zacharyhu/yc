<?php
/* @var $this GpCpController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Gp Cps',
);

$this->menu=array(
	array('label'=>'Create GpCp', 'url'=>array('create')),
	array('label'=>'Manage GpCp', 'url'=>array('admin')),
);
?>

<h1>Gp Cps</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
