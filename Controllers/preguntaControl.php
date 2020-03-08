<?php
require '../vendor/autoload.php';

use Model\Beans\Pregunta;
use Model\Bo\PreguntaBo;

switch ($_REQUEST['action']) {    
    case "registra":
        $pregunta=new pregunta();
        $pregunta->txt=$_POST['txt'];
        $pregunta->r1=$_POST['r1'];
        $pregunta->val1=$_POST['val1'];
        $pregunta->r2=$_POST['r2'];
        $pregunta->val2=$_POST['val2'];
        $pregunta->r3=$_POST['r3'];
        $pregunta->val3=$_POST['val3'];
        $pregunta->r4=$_POST['r4'];
        $pregunta->val4=$_POST['val4'];
        $pregunta->ida=$_POST['ida'];
        $bo=new preguntaBo();
        $r = $bo->registrarPreguntaBo($pregunta);
        print($r);
        break;
}
