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



# Les structures de contrôle

**for-in**
```Swift
for i in 1...5 {
    print ( i );
}

for i in liste {
	print ( i );
}

for (a, b) in dico {
	print ( "Clé : \(a) / Valeur : \(b)" );
}
```

**while**
```Swift
var valueForWhile :Int = 0;
while valueForWhile < 5 {
	print(valueForWhile);
	valueForWhile += 1;
}
```

**if**
```Swift
var valueForIf :Int = 15;
if valueForIf >= 10 {
	print ("Good");
} else {
	print ("Evil");
}
```

**switch**
```Swift
var valueForSwitchRanges :Int = 14;
switch valueForSwitchRanges {
	case 10, 11:
		print ("Low");
	case 12, 13:
		print ("Medium");
	case 14, 15:
		print ("High");
	default:
		print ("NOT");
}

var valueForSwitchTurples = (6, 12);
switch valueForSwitchTurples {
	case (0...7, _):
		print ("Result 1");
	case (_, 0...7):
		print ("Result 2");
	case (_, 8...9):
		print ("Result 3");
	default:
		print ("Pas de résultat");
}

var valueForSwitchAdvanced = (5, 3);
switch valueForSwitchAdvanced {
	case let (x, y) where x<8 && y>8:
		print ("Result 1 \(x,y)");
	case let (x, y) where y<8 && x>8:
		print ("Result 2 \(x,y)");
	case let (x, y) where x<8 && y<8:
		print ("Result 2 \(x,y)");
	default:
		print ("Pas de résultat");
}
```



# Les fonctions

```Swift
func fonctionDeTest () {
	print ("Result fonctionDeTest");
}

fonctionDeTest();  // Appel de la fonction
```

Nom de la fonction, suivi par un ou plusieurs arguments et de leurs types (falcultatif), puis le type de retour de la fonction (falcultatif si l'on ne souhaite aucun retour de fonction)
```Swift
func fonctionDeTestAdvanced (variableDeTypeString :String = "NO DATA") -> String { 
	print (variableDeTypeString);
	return variableDeTypeString;
}

// Appel de la fonction sans les paramètres (possible car une valeur par défaut 
// est déclarée et est utilisée -> "NO DATA")
fonctionDeTestAdvanced(); 

// Appel de la fonction avec en paramètre le texte "Pingouin"
fonctionDeTestAdvanced(variableDeTypeString: "Pingouin");
```

Il est possible de récupérer un nombre non défini d'arguments, comme ici pour calculer une moyenne
```Swift
func fonctionAvecNombreArgumentVariable (variablesDeTypeDouble :Double...) -> Double {
	var somme :Double = 0;
	for i in variablesDeTypeDouble {
		somme += i;
	}
	print (somme / Double(variablesDeTypeDouble.count));
	return somme / Double(variablesDeTypeDouble.count);
}

fonctionAvecNombreArgumentVariable (variablesDeTypeDouble: 8, 11, 12);
```



# Les fermetures

- **Fonctions globales** : une fermeture qui possède un nom mais qui ne capture rien.
- **Fonctions imbriqués** : possède un nom et peut capturer des valeurs de son environnement.
- **Expression de fermeture** : fermeture sans nom, écrite dans une syntaxe allégée.



# Les classes
```Swift
class NomDeLaClasse { // Nom de la classe avec une majuscule obligatoire
	
	public var VariableTest :String = "Test";
	
	func fonctionDansLaClasse () {
		print ("Test");
	}
}
```
Création d'une instance de la classe
```Swift
let instanceDeLaClass = NomDeLaClasse();
```
Accès à la variable publique de la classe
```Swift
print(instanceDeLaClass.VariableTest);
```
Modification de la variable dans l'instance (et non dans la classe directement)
```Swift
instanceDeLaClass.VariableTest = "Test YOLO";
```
Accès à la variable modifiée
```Swift
print(instanceDeLaClass.VariableTest);
```
