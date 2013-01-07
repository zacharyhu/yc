<?php
define("MO_URL", 'http://218.108.132.10/');
$value='{"status":"+OK","gameid":"308","online":"25","con":"1","e":5}';
// $arr=json_decode($value);
// print $arr->{'a'};
// echo "<br>";
 var_dump($value);
//json数据转php array
$arr2=json_decode(($value),true);
// echo $arr2['a'];
// echo "<br>";
foreach ($arr2 as $key=>$val){
 echo $key."  :  ".$val." <br>";
}
//php数组转json
$arr=array(
  'gameid'=>'305',
  'userid'=>'265478',
  'chg_grade'=>'-1000',
  'chg_esc'=>'-22'
  );
$json_data=json_encode($arr);
var_dump($json_data);
print $json_data;
//php curl 方法
/**
 * Curl版本
 * 使用方法：
 * $post_string = "app=request&version=beta";
 * request_by_curl('http://host/restServer.php',$post_string);
 */
function request_by_curl($remote_server,$post_string){
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
 echo $data;
// var_dump($data);
echo "<br>";
var_dump($data);
echo "start json decode<br>";
$data_arr=json_decode($data,true);
var_dump($data_arr);
print_r($data_arr);
}
 
$URI='game_port_check';
$remote_server=MO_URL.$URI;
echo $remote_server;
request_by_curl($remote_server, $json_data);
// var_dump($data);
 