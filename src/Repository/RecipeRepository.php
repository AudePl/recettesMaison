<?php

namespace App\Repository;

use App\Entity\Recipe;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Recipe|null find($id, $lockMode = null, $lockVersion = null)
 * @method Recipe|null findOneBy(array $criteria, array $orderBy = null)
 * @method Recipe[]    findAll()
 * @method Recipe[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class RecipeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Recipe::class);
    }

    // /**
    //  * @return Recipe[] Returns an array of Recipe objects
    //  */

    public function findLikeIngredientsOrTitle($value)
    {
        $queryBuilder = $this->createQueryBuilder('r')
            ->addSelect('i')
            ->join('r.ingredients', 'i')
            ->where('r.title LIKE :val')
            ->orWhere('i.name LIKE :val')
            ->setParameter('val', '%' . $value . '%')
            ->getQuery();

        return $queryBuilder->getResult();
    }

    public function findByCategory($value)
    {
        $queryBuilder = $this->createQueryBuilder('r')
            ->addSelect('sc')
            ->join('r.subCategory', 'sc')
            ->where('sc.category = :val')
            ->setParameter('val', $value)
            ->getQuery();

        return $queryBuilder->getResult();
    }


    /*
    public function findOneBySomeField($value): ?Recipe
    {
        return $this->createQueryBuilder('r')
            ->andWhere('r.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
