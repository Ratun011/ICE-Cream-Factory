(define (domain myDomain)
    (:predicates (packaging)(assemble)(delivered)
        (have-sprinkle)(have-chocolate)(have-vanilla)(have-cone)(have-order)
        (sprinkle ?x)(chocolate ?x)(vanilla ?x)(cone ?x)(order ?x))
 
    (:action packaging
        :parameters ()
	    :precondition (assemble) ;; if ice-cream is assembled then we will package them
        :effect (and (packaging)
                (not (delivered)))) ;; still not delivered

    (:action delivery
        :parameters ()
        :precondition (and(not (delivered)) ;; if packaging is completed and not delevered yet
                      (packaging))
        :effect (delivered))

    (:action add-sprinkle
        :parameters (?x)
        :precondition (sprinkle ?x)
        :effect (have-sprinkle))
    
    (:action add-chocolate
        :parameters (?x)
        :precondition (chocolate ?x)
        :effect (have-chocolate))

    (:action add-vanilla
        :parameters (?x)
        :precondition (vanilla ?x)
        :effect (have-vanilla))
  
    (:action add-cone
        :parameters (?x)
        :precondition (cone ?x)
        :effect (have-cone))
    (:action order
        :parameters (?x)
        :precondition (order ?x)
        :effect (have-order))
  
)