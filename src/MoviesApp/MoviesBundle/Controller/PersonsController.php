<?php

namespace MoviesApp\MoviesBundle\Controller;

use Pagerfanta\Pagerfanta;
use Pagerfanta\Adapter\DoctrineORMAdapter;
use Pagerfanta\Exception\NotValidCurrentPageException;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use MoviesApp\MoviesBundle\Entity\Persons;
use MoviesApp\MoviesBundle\Form\PersonsType;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class PersonsController extends Controller
{
    /*
     * 
     * Create new person
     * 
     * */
    
    public function createAction(Request $request)
    {
        $em=$this->getDoctrine()->getManager();
        
        $persons = new Persons();
        $form = $this->createForm(PersonsType::class, $persons);
        
        if($request->getMethod()=='POST'){
            
            $form->handleRequest($request);
            
            if($form->isValid()){
                
                $em->persist($persons);
                $em->flush();
            
                return $this->redirectToRoute('persons');
            }
            
            
        }
        
        
        return $this->render('MoviesBundle:Persons:create.html.twig', array(
            'form'=>$form->createView()
        )
            );
    }
    
    /*
     * 
     * Show all persons 
     * 
     * */
    
    public function showAction(Request $request){
                 
        
       $em=$this->getDoctrine()->getManager();
      
       $persons=$em->getRepository('MoviesBundle:Persons')->findAll();
//        $adapter = new DoctrineORMAdapter($persons);
//        $persons = new Pagerfanta($adapter);
//        $persons->setMaxPerPage(5);

       
       $personslist=$em->getRepository('MoviesBundle:Persons')->findAll();
       
       $persons  = $this->get('knp_paginator')->paginate(
           $personslist,
           $request->query->get('page', 1)/*page number*/,
           5/*limit per page*/
           );
       
       return $this->render('MoviesBundle:Persons:show.html.twig', array('persons'=>$persons));
        
    }
    
    
    /*
     * 
     * Edit persons with person id
     * 
     * 
     * */
    
    public function editAction($id, Request $request){
        
        $em=$this->getDoctrine()->getManager();
        
        $persons = $em->getRepository('MoviesBundle:Persons')->find($id);
        $form = $this->createForm(PersonsType::class, $persons);
        
     
        
        if($request->getMethod()=='POST'){
            
            $form->handleRequest($request);
            
            if($form->isValid()){
                
                $em->persist($persons);
                $em->flush();
                
                return $this->redirectToRoute('persons');
            }
            
            
        }
        
        
        return $this->render('MoviesBundle:Persons:edit.html.twig', array(
            'form'=>$form->createView()
        )
            );
        
    }
    
    /*
     * 
     * Delete person from database
     * 
     * */
    
    public function deleteAction($id, Request $request){
        
        $em=$this->getDoctrine()->getManager();
        
        $persons = $em->find('MoviesBundle:Persons',$id);
        
        if(!$persons)
        {
            throw $this->createNotFoundException('Persons with \'id '. $id .' n\' is deleted');
        }
        
        $em->remove($persons);
        $em->flush();
        
        return $this->redirectToRoute('persons');
    }
    
}
