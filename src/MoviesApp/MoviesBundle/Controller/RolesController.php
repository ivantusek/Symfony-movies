<?php

namespace MoviesApp\MoviesBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Response;
use MoviesApp\MoviesBundle\Entity\Roles;

class RolesController extends Controller
{
    /*
     * 
     * 
     * Insert roles in database
     * 
     * */
    
    public function createAction(){
        
        $em=$this->getDoctrine()->getManager();
        
        $roles= new Roles();        
        $roles->setName('actor');
        $em->persist($roles);
        
        $roles1= new Roles();        
        $roles1->setName('producer');
        $em->persist($roles1);
        
        $roles2= new Roles();      
        $roles2->setName('director');
        $em->persist($roles2);
        
        $em->flush();
        
        return $this->render('MoviesBundle:Roles:insert.html.twig');
    }
    
    /*
     * 
     * Show all roles
     * 
     * */
    
    public function showAction(){
        
      $em=$this->getDoctrine()->getManager();
        
      $roles=$em->getRepository('MoviesBundle:Roles')->findAll();
        
      return $this->render('MoviesBundle:Roles:show.html.twig', array(
            'roles'=>$roles
        ));
        
    }
}
