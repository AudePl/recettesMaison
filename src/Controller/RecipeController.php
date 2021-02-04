<?php

namespace App\Controller;

use App\Entity\Ingredient;
use App\Entity\Material;
use App\Entity\Recipe;
use App\Form\RecipeType;
use App\Repository\RecipeRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/recipe", name="recipe_")
 */
class RecipeController extends AbstractController
{
    /**
     * @Route("/", name="index")
     */
    public function index(RecipeRepository $recipeRepository): Response
    {
        $recipes = $recipeRepository->findAll();

        return $this->render('recipe/index.html.twig', [
            'recipes' => $recipes,
        ]);
    }

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
     * @Route("/new", name="new")
     */
    public function new(RecipeRepository $recipeRepository, Request $request, EntityManagerInterface $entityManager): Response
    {
        $recipe = new Recipe();

        $formRecipe = $this->createForm(RecipeType::class, $recipe);
        $formRecipe->handleRequest($request);

        if ($formRecipe->isSubmitted() && $formRecipe->isValid()) {
            foreach ($recipe->getMaterials() as $material) {
                $material->setRecipe($recipe);
                $entityManager->persist($material);
            }
            foreach ($recipe->getIngredients() as $ingredient) {
                $ingredient->setRecipe($recipe);
                $entityManager->persist($ingredient);
            }
            $entityManager->persist($recipe);
            $entityManager->flush();

            return $this->redirectToRoute('home');
        }

        return $this->render('recipe/new.html.twig', [
            'formRecipe' => $formRecipe->createView(),
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

    /**
     * @Route("/{id}/edit", methods={"GET","POST"}, name="edit")
     */
    public function edit(Recipe $recipe, Request $request, EntityManagerInterface $entityManager): Response
    {
        if (!$recipe) {
            throw $this->createNotFoundException(
                'No recipe with this id found in recipe\'s table.'
            );
        }

        $formRecipe = $this->createForm(RecipeType::class, $recipe);
        $formRecipe->handleRequest($request);

        if ($formRecipe->isSubmitted() && $formRecipe->isValid()) {
            foreach ($recipe->getMaterials() as $material) {
                $material->setRecipe($recipe);
                $entityManager->persist($material);
            }
            foreach ($recipe->getIngredients() as $ingredient) {
                $ingredient->setRecipe($recipe);
                $entityManager->persist($ingredient);
            }

            $entityManager->flush();

            return $this->redirectToRoute('recipe_show', ['id' => $recipe->getId()]);
        }

        return $this->render('recipe/new.html.twig', [
            'recipe' => $recipe,
            'formRecipe' => $formRecipe->createView(),
        ]);
    }

}
