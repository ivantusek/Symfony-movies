<?php

namespace MoviesApp\MoviesBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class FilmType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    
    /*
     * 
     * Function to create form 
     * 
     * */
    
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
        ->add('title',  TextType::class, array('attr' =>array('class' => 'form-control', 'style' => 'margin-bottom:15px' )))
        ->add('description',  TextareaType::class,  array('attr' =>array('class' => 'form-control', 'style' => 'margin-bottom:15px' )))
        ->add('yearPublication',  TextType::class,  array('attr' =>array('class' => 'form-control', 'style' => 'margin-bottom:15px' )))
            ->add('persons', EntityType::class, array(
                'class' => 'MoviesApp\MoviesBundle\Entity\Persons',
                'choice_label' => 'namesurname',
                 'multiple' => true
                             ))
             ->add('file')
            
                ;
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'MoviesApp\MoviesBundle\Entity\Film'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'moviesapp_moviesbundle_film';
    }


}
