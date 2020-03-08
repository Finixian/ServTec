<?php
require '../vendor/autoload.php';

use Model\Beans\Aspirante as Aspirante;
use Model\Bo\AspiranteBo as AspiranteBo;
use Model\Bo\FormularioBo as FormularioBo;
use Model\FormularioView as FormularioView;

switch ($_REQUEST['action']) {    
    case "registra":
        $aspirante=new Aspirante();
        $aspirante->nombre=$_POST['nombre'];
        $aspirante->apaterno=$_POST['apaterno'];
        $aspirante->amaterno=$_POST['amaterno'];
        $aspirante->fnacimiento=$_POST['fnacimiento'];
        $aspirante->folio=$_POST['folio'];
        $aspirante->clave=$_POST['clave'];
        $aspirante->correo=$_POST['correo'];
        $aspirante->tipo=$_POST['tipo'];        
        $bo=new AspiranteBo();
        $r = $bo->registrarAspiranteBo($aspirante);
        print($r);
        break;
    case "guarda":
        $aspirante=new Aspirante();
        $aspirante->id=$_POST['id'];
        $aspirante->nombre=$_POST['nombre'];
        $aspirante->apaterno=$_POST['apaterno'];
        $aspirante->amaterno=$_POST['amaterno'];
        $aspirante->fnacimiento=$_POST['fnacimiento'];
        $aspirante->folio=$_POST['folio'];
        $aspirante->clave=$_POST['clave'];
        $aspirante->correo=$_POST['correo'];          
        $bo=new AspiranteBo();
        $r = $bo->actualizarAspiranteBo($aspirante);
        print($r);
        break;
    case "elimina":
        $aspirante = new Aspirante();
        $aspirante->id=$_POST['id'];
         $bo=new AspiranteBo();
        $r=$bo->eliminaAspiranteBo($aspirante);
        print $r;
        break;
    case "actualiza":
        $aspirante = new Aspirante();
        $aspirante->id=$_POST['id'];
        $bo=new AspiranteBo();
        $r=$bo->traeDatosAspiranteBo($aspirante);
        print $r;
        break;
    case "mdformularioregistra":
    	$formulario = new FormularioView();
        $bo=new FormularioBo();
    	$r=$bo->getFormularioRegistraBo($formulario);
    	print $r;
        break;

/* Áreas */
    case "traearea":
        $id=$_POST['id'];
        $bo=new AspiranteBo();
        $r=$bo->traeDatosAreaBo($id);
    	print $r;
        break;
    case "guardaarea":        
        $id=$_POST['id'];
        $nombre=$_POST['nombre'];          
        $bo=new AspiranteBo();
        $r = $bo->actualizarAreaBo($id, $nombre);
        print($r);
        break;
/* /Áreas */        
}
