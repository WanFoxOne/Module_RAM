// VERSION HIGHLIGHT : https://pastebin.com/ubefTeA0

// Déclaration de variables
var valueTestA :Double = 2147483647; // var : variable susceptible d'être modifiée
let 🐱 :Double = 10.214; // let : constante, variable fixe
var valueTestC :String = "String Test";

print ("Valeur de valueTestA (var) : \(valueTestA)");
print ("Valeur de valueTestB (const) : \(🐱)");
print ("Valeur de valueTestC (string) : \(valueTestC)");


// Tableau simpliste
var liste :[String] = ["Test1", "Test2", "Test3"];

print (liste[1]);


// Dictionnaire
// ! : ordonne de ne pas tenir compte de l'avertissement d'une possible entrée inexistante
var dico :Dictionary = ["Test1": 0, "Test2": 1, "Test3": 2];
print ("Dico : \(dico["Test2"]!)");


// Création d'un tableau et d'un dico vide
var emptyArray = [String]();
var emptyDico = Dictionary<String, Int>();


// -------------------------------------------------------------------------------------------

// Structure de contrôle

// for-in ****************************

for i in 1...5 {
    print ( i );
}

for i in liste {
	print ( i );
}

for (a, b) in dico {
	print ( "Clé : \(a) / Valeur : \(b)" );
}

// while *****************************

var valueForWhile :Int = 0;
while valueForWhile < 5 {
	print(valueForWhile);
	valueForWhile += 1;
}

// if ********************************

var valueForIf :Int = 15;
if valueForIf >= 10 {
	print ("Good");
} else {
	print ("Evil");
}

// switch ****************************

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


// -------------------------------------------------------------------------------------------

// Fonctions

func fonctionDeTest () {
	print ("Result fonctionDeTest");
}

fonctionDeTest();  // Appel de la fonction

// Nom de la fonction, suivi par un ou plusieurs arguments et de leurs types (falcultatif), puis le type de retour de la fonction (falcultatif si l'on ne souhaite aucun retour de fonction)
func fonctionDeTestAdvanced (variableDeTypeString :String = "NO DATA") -> String { 
	print (variableDeTypeString);
	return variableDeTypeString;
}

fonctionDeTestAdvanced(); // Appel de la fonction sans les paramètres (possible car une valeur par défaut est déclarée et est utilisée -> "NO DATA")
fonctionDeTestAdvanced(variableDeTypeString: "Test"); // Appel de la fonction avec en paramètre le texte "Test"

// Il est possible de récupérer un nombre non défini d'arguments, comme ici pour calculer une moyenne
func fonctionAvecNombreArgumentVariable (variablesDeTypeDouble :Double...) -> Double {
	var somme :Double = 0;
	for i in variablesDeTypeDouble {
		somme += i;
	}
	print (somme / Double(variablesDeTypeDouble.count));
	return somme / Double(variablesDeTypeDouble.count);
}

fonctionAvecNombreArgumentVariable (variablesDeTypeDouble: 8, 11, 12);


// -------------------------------------------------------------------------------------------

// Fermeture

// Fonctions globales : une fermeture qui possède un nom mais qui ne capture rien.
// Fonctions imbriqués : possède un nom et peut capturer des valeurs de son environnement.
// Expression de fermeture : fermeture sans nom, écrite dans une syntaxe allégée.



// -------------------------------------------------------------------------------------------

// Les classes

class NomDeLaClasse { // Nom de la classe avec une majuscule obligatoire
	
	public var VariableTest :String = "Test";
	
	func fonctionDansLaClasse () {
		print ("Test");
	}
}

// Création d'une instance de la classe
var instanceDeLaClass = NomDeLaClasse();

// Accès à la variable publique de la classe
print(instanceDeLaClass.VariableTest);
