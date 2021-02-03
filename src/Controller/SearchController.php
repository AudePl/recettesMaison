<?php

namespace App\Controller;

use App\Form\CategoryType;
use App\Form\SearchType;
use App\Form\SubCategoryType;
use App\Repository\RecipeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class SearchController extends AbstractController
{
    /**
     * @Route("/search", name="search")
     */
    public function index(Request $request, RecipeRepository $recipeRepository): Response
    {
        $formSearch = $this->createForm(SearchType::class);
        $formSearch->handleRequest($request);

        $formCategory = $this->createForm(CategoryType::class);
        $formCategory->handleRequest($request);

        $formSubCategory = $this->createForm(SubCategoryType::class);
        $formSubCategory->handleRequest($request);

        if ($formSearch->isSubmitted() && $formSearch->isValid()) {
            $search = $formSearch->getData()['search'];
            $recipes = $recipeRepository->findLikeIngredientsOrTitle($search);

            return $this->render('search/results.html.twig', [
                'recipes' => $recipes,
            ]);
        }

        return $this->render('search/index.html.twig', [
            'formSearch' => $formSearch->createView(),
            'formCategory' => $formCategory->createView(),
            'formSubCategory' => $formSubCategory->createView(),
        ]);
    }
}
