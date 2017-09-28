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
instanceDeLaClass.VariableTest = "Otarie";
print(instanceDeLaClass.VariableTest);
```
