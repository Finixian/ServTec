<?php
require '../vendor/autoload.php';

use Model\Beans\Formulario;
use Model\Bo\FormularioBo;

switch ($_POST['action']) {
    case "mdformularioregistra":
    	$formulario = new Formulario();
        $bo=new FormularioBo();
    	$r=$bo->getFormularioRegistraBo($formulario);
    	print $r;
    	break;
    case "mdformulariologin":
        $formulario = new Formulario();
        $bo=new FormularioBo();
        $r=$bo->getFormularioLoginBo($formulario);
        print $r;
        break;
    case "mdformulariopregunta":
        $formulario = new Formulario();
        $bo=new FormularioBo();
        $r=$bo->getFormularioPregunta($formulario);
        print $r;
        break;
}
