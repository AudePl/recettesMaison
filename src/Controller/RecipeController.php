<?php

namespace App\Controller;

use App\Entity\Recipe;
use App\Repository\RecipeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/recipe", name="recipe_")
 */
class RecipeController extends AbstractController
{

    /**
     * @Route("/favorite", name="favorite")
     */
    public function favorite(RecipeRepository $recipeRepository): Response
    {
        $recipesFavorites = $recipeRepository->findBy(['isFavorite' => true]);

        return $this->render('recipe/favorite.html.twig', [
            'recipesFavorites' => $recipesFavorites,
        ]);
    }


    /**
     * @Route("/{id}", methods={"GET"}, name="show")
     */
    public function show(Recipe $recipe): Response
    {
        if (!$recipe) {
            throw $this->createNotFoundException(
                'No recipe with this id found in recipe\'s table.'
            );
        }
        return $this->render('recipe/show.html.twig', [
            'recipe' => $recipe,
        ]);
    }


}
