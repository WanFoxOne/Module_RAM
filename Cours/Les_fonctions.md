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
