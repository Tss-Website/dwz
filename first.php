<?php //Written by CGPJ
$code = $_GET['code'];
$mysql_server="localhost";
$mysql_username="username";
$mysql_password="password";
$mysql_database="databasename";
//建立数据库链接
$conn = mysql_connect($mysql_server,$mysql_username,$mysql_password) or die("数据库链接错误");
mysql_select_db($mysql_database,$conn);
$sql = "select url from qk_url where alias='$code'";
$f = "select s from qk_url where alias='$code'";
$r = mysql_query($f);
$nstatus = mysql_fetch_array($r);
$m = mysql_query($sql);
$surl = mysql_fetch_array($m);
$status = $nstatus["s"];
$url = $surl["url"];
if($status == 3){
    echo '<script language="javascript" type="text/javascript"> window.location.href="http://4mg.top/update"; </script>';
}else if($status == 2){
    echo '<script language="javascript" type="text/javascript"> window.location.href="http://4mg.top/cancel"; </script>';
}else if($status == 1){
    Header("Location:$url\n");
}else{
    echo '<script language="javascript" type="text/javascript"> window.location.href="http://4mg.top/error"; </script>';
}
?>
