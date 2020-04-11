<?php

$number = 5;

for ($i = 1; $i <= $number; $i++) {
	echo "<br>";
    for ($j = $number; $j >= 1; $j--) {
        if ($i < $j) {
        } else {
            echo $i;
        }
    }

    echo PHP_EOL;
}
?>