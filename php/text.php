<?php

$array = array();

$array[0] ="plats1";
$array[1] ="Plats2";

echo "<pre>" . print_t($array, 1) . "</pre>";

$array = ["Plats1", "Plats2","Plats3"];

array_push($array, "Plats4");

echo "<pre>" . print_r ($array, 1) . "</pre>";

foreach ($variable as $key => $value) {
    echo "key: " .$key; 
    echo "value: " . $value;
    echo "<br>";
}