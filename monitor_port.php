<?php
define("MO_URL", 'http://218.108.132.10/');
// $value='{"status":"+OK","gameid":"308","online":"25","con":"1","e":5}';
// // $arr=json_decode($value);
// // print $arr->{'a'};
// // echo "<br>";
//  var_dump($value);
// //json����תphp array
// $arr2=json_decode(($value),true);
// // echo $arr2['a'];
// // echo "<br>";
// foreach ($arr2 as $key=>$val){
//  echo $key."  :  ".$val." <br>";
// }
// //php����תjson
// $arr=array(
//   'gameid'=>'305',
//   'userid'=>'265478',
//   'chg_grade'=>'-1000',
//   'chg_esc'=>'-22'
//   );
// $json_data=json_encode($arr);
// var_dump($json_data);
// print $json_data;
//php curl ����
/**
 * Curl�汾
 * ʹ�÷�����
 * $post_string = "app=request&version=beta";
 * request_by_curl('http://host/restServer.php',$post_string);
 */
function request_by_curl($remote_server){
 $ch = curl_init();
 curl_setopt($ch,CURLOPT_URL,$remote_server);
//  curl_setopt($ch,CURLOPT_POSTFIELDS,'datapost='.$post_string);
 curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
 curl_setopt($ch,CURLOPT_USERAGENT,"HU-web");
 curl_setopt ($ch, CURLOPT_TIMEOUT, 10 );
 $data = curl_exec($ch);
 if (curl_errno($ch)) {
 	echo 'Errno'.curl_error($ch);
 }
 curl_close($ch);
//  return $data;
//  echo $data;
// var_dump($data);
// echo "<br>";
// var_dump($data);
// echo "start json decode<br>";
return json_decode($data,true);
// var_dump($data_arr);
// print_r($data_arr);
// return $data_arr;
}
 
$URI='game_port_check';
$remote_server=MO_URL.$URI;
// echo $remote_server;
$arr_result=request_by_curl($remote_server);
print_r($arr_result);
/*
 * $arr_result�����±꣺
 * personTime �ۼ��˴�
 * coin    ������Ϸ���ż�
 * online  ��������150/216  Ŀǰ/���
 * state  ״̬ +OK  ����״̬--����
 * serverID ������
 * timeout  ��ʱʱ��
 * gameID   ��Ϸ���
 * 
 */
foreach ($arr_result as $k => $v) {
	echo "--------begin---------</br>";
	echo "the key :".$k." has a value : ".$v;
	echo "</br>--------end-----------</br>";
}
//

/*
 * �жϲ���ȡ�����������ָ���ǰ���ߺ������������
 */
if (isset($arr_result['online'])){
// 	echo "</br>   the online data : ".$arr_result['online'];
	$Online_arr=explode('/', $arr_result['online']);
	$CUR_Online=$Online_arr[0];
	$Max_Online=$Online_arr[1];
	echo "<br> current online : ".$CUR_Online."  max:".$Max_Online." --- </br>";
}else {
	echo "have no online data";
	$CUR_Online=0;
	$Max_Online=0;
}
/*
 * ����״̬
 */
if (isset($arr_result['state'])){
	if ($arr_result['state'] == "+OK"){
		echo "</br>state  is  just ok ";
	}else {
		echo "</br>server start failed";
	}
}else {
	echo "no data for stat<us></us>";
}

