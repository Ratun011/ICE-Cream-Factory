(define 
(problem Ice_Cream_Factory)
(:domain myDomain)
(:objects ShopOrder WhiteChocolate Vanilla ThinCone littleSprinkle)
(:init  (order ShopOrder)
        (chocolate WhiteChocolate)
        (vanilla Vanilla)
        (cone ThinCone)
        (sprinkle littleSprinkle)
        (assemble))
(:goal (and (have-order)
        (have-cone)
        (have-chocolate)
        (have-vanilla)
        (have-sprinkle)
        (packaging)
        (delivered))))