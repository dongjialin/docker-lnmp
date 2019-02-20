<?php
//echo 'hello php!';
//phpinfo();
//die;
$redis = new redis();
$redis->connect('redis', 6379);
echo "Connection to server sucessfully";
////查看服务是否运行
//echo "Server is running: " . $redis->ping();