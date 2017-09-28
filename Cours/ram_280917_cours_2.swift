var myTestProperty :Int = 0 {
  willSet {
    print ("Avant affectation...");
  }
  didSet {
    print ("Après affectation...");
  }
}

Enumeration
-Utilise enum pour definir une énumération

Exemple :

enum Orientation {
	case Nord
	case Sud
	case Est
	case Ouest
}

var direction = Orientation.Nord
