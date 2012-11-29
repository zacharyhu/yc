<?php
/* @var $this GpCpController */
/* @var $model GpCp */

$this->breadcrumbs=array(
	'Gp Cps'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List GpCp', 'url'=>array('index')),
	array('label'=>'Manage GpCp', 'url'=>array('admin')),
);
?>

<h1>Create GpCp</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>