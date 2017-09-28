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

```Swift
  //Exemple
  
func echangeValeur<T>(a: inout T, b: inout T){
  let tempA = a;
  a = b;
  b = tempA;
}

var toto = "salut";
var titi = "coucou";

print(("\(titi)"));
```
**Appel de fonction générique**
Deux possibilités
- simple appel avec des éléments qui définissent le type générique
```Swift
var a = 23;
var b = 42;

echangeValeur(a: &a, b: &b); //a vaudra désormais 42 et b 23
```
**Classe générique**
- Possibilité de définir une classe
- Syntaxe  utilisation de <NomRepresentantType> après le nom de la classe

```Swift
//Exemple

classe I2M<TypeCaract>{
  var numEleves = 20;
  var caracteristiques: TypeCaract;
  init(a: TypeCaract){
    caracteristiques=a;
   }
}

let laClasse = I2M<Int>(a:4);
```
**Elements optionnels :**
- En *Swift* il est possible de définir des éléments (variables ou constantes) comme étant optionnel
    => Rajouter un point d'interrogation après le type
```Swift
  var uneAdresse: String?; //c'est optionnel, peut être NULL
```
  - Le qualificatif *optionnel* s'utilise dans les situations où un élément peut potentiellement ne pas avoir de valeur
  - Un élément optionnel de type T peut être dans **deux configurations** :
      => Posséder une certaine valeur de type T
      => N'avoir aucun élément
```Swift
var ensembleNote = ["Jean": 10, "Paul": 13, "Michel": 20];
var uneNote: Int? = ensembleNote["Jean"];
```
=> uneNote doit être déclarée comme étant *optionnel* car le dictionnaire ensembleNote ne contient pas
