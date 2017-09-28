// Observateurs de propriété

var myTestProperty :Int = 0 {
  willSet {
    print ("Avant affectation...");
  }
  didSet {
    print ("Après affectation...");
  }
}


// Énumération
enum uneEnumeration {
    
}

enum Orientation {
    case Nord;
    case Sud;
    case Est;
    case Ouest;
}


// ---------------------------------------------------------------
// Les structures
// ---------------------------------------------------------------

// Pas d'héritages
// Pas de conversion de type à l'exécution
// Pas de méthode "deinit"

// -> Les affectations ou passage en paramètres sont toujours réalisés par copie.
