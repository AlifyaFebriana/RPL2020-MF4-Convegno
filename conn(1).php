<?php

    $connect = new mysqli ("localhost","root","","convegnoapp");

    if($connect) {

    }else{
        echo "Connection Failed";
        Exit();
    }
