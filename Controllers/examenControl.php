<?php
require '../vendor/autoload.php';
session_start();

use Model\Beans\Examen as Examen;
use Model\Bo\ExamenBo as ExamenBo;

switch ($_REQUEST['action']) {    
    case "evalua":
        $examen=new Examen();    
        $examen->suma=$_POST['sum']+$_POST['sum2']+$_POST['sum3']+$_POST['sum4']+$_POST['sum5']+$_POST['sum6']+$_POST['sum7']+$_POST['sum8']+$_POST['sum9']+$_POST['sum10'];  
        $examen->r1=$_POST['sum'];
        $examen->r2=$_POST['sum2'];
        $examen->r3=$_POST['sum3'];
        $examen->r4=$_POST['sum4'];
        $examen->r5=$_POST['sum5'];         
        $examen->r6=$_POST['sum6'];         
        $examen->r7=$_POST['sum7'];         
        $examen->r8=$_POST['sum8'];         
        $examen->r9=$_POST['sum9'];         
        $examen->r10=$_POST['sum10'];         
        $examen->id= $_SESSION['idaspirante'];
        $bo=new ExamenBo();
        $r = $bo->registrarResultadoBo($examen);
        print($r);
        break;
}