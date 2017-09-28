```Swift
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
```


# Les structures

- Pas d'héritages
- Pas de conversion de type à l'exécution
- Pas de méthode "deinit"

**Différences importantes:**

- Les **affectations** ou **passage en paramètres** sont toujours réalisés par **copie**.
- Toutes les structures ont des initialiseurs automatiquement générés

**Caractéristiques communes:**

- Peuvent être étendue (grace aux extensions)
- Peuvent être conforme à un protocole
- Peuvent éfinir des sous scripts

**Fonction générique:**

- Possibilité de définir une méthode utilisant un type générique
- Syntaxe : utilisatioin de <*NomRepresentantType*> après le nom de la fonction
- Exemple:

```Swift
  func echangeValeur<T>(a: inout T b: inout T){
  let tempA = a;
  a = b;
  b = tempA;
  }
