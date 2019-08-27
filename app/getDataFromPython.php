<?php

$command="python printMyName.py";
exec($command,$data,$outcode);

foreach($data as $data1)
{
    $arr["Python"][]=$data1;
}

$arr=json_encode($arr);
echo $arr;

?>