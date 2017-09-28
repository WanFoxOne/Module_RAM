# Les variables

Déclaration de variables
```Swift
var valueTestA :Double = 2147483647; // var : variable susceptible d'être modifiée
let 🐱 :Double = 10.214; // let : constante, variable fixe
var valueTestC :String = "String Test";

print ("Valeur de valueTestA (var) : \(valueTestA)");
print ("Valeur de valueTestB (const) : \(🐱)");
print ("Valeur de valueTestC (string) : \(valueTestC)");
```

Tableau simpliste
```Swift
var liste :[String] = ["Test1", "Test2", "Test3"];

print (liste[1]);
```

Dictionnaire
```Swift
// ! : ordonne de ne pas tenir compte de l'avertissement d'une possible entrée inexistante
var dico :Dictionary = ["Test1": 0, "Test2": 1, "Test3": 2];
print ("Dico : \(dico["Test2"]!)");
```

Création d'un tableau et d'un dico vide
```Swift
var emptyArray = [String]();
var emptyDico = Dictionary<String, Int>();
```
