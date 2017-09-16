import Foundation
//Exo 1.2

//Question 1
print("----- Questions 1 et 2-----");
print(" ");

let tabEtudiants = ["Robert Martin MMI1", "Anne Dupond I2M", "Jean Jacques GEII", "Isabelle Laporte I2M", "Sophie Legrand GEII", "Françaois Gerard I2M", "Alice Martin SRC"];

//Question 2

let premNoteEtu = ["Robert Martin": 10, "Anne DUpond": 5, "Jean Jacques": 11, "Isabelle laposte": 8];
for(nom, note) in premNoteEtu
{
	print("Nom: \(nom) note: \(note)");
}

//Question 3
print(" ");
print("-----Questions 3 et 4-----");
print(" ");

let ToutesNotes = ["Robert Martin": [10, 13, 14, 8, 11], 
				  "Anne Dupond": [5, 3, 10, 3, 7],
				  "Jean Jacques": [11, 20, 17, 2, 3],
				  "Isabelle Laporte": [8, 10, 10, 11, 9]];

//Question 4

for (etu, tabN) in ToutesNotes
{
	var somme = 0;
	for note in tabN {
		somme = somme + note;
	}
	
	let moyenne = Double(somme)/Double(tabN.count);
	print("\(etu): moyenne: \(moyenne)");
}

//Question 5
print(" ");
print("-----Question 5-----");
print(" ");

for (etu, tabN) in ToutesNotes
{
	var max = 0;
	for note in tabN {
		if note > max {
			max = note;
		}
	}
	print("\(etu): meilleure note: \(max)");
}

//Question 6
print(" ");
print("-----Question 6-----");
print(" ");

var mmi = [String]();
var geii = [String]();
var i2m = [String]();
var src = [String]();

for etu in tabEtudiants
{
	switch etu {
		case _ where etu.contains("GEII"): //la fonction contains() necessite l'importation de Foundation
			print("\(etu) ==> GEII");
			geii.append(etu);
		
		case _ where etu.contains("MMI"): 
			print("\(etu) ==> MMI");
			mmi.append(etu);
		
		case _ where etu.contains("I2M"): 
			print("\(etu) ==> I2M");
			i2m.append(etu);
		
		case _ where etu.contains("SRC"): 
			print("\(etu) ==> SRC");
			src.append(etu);
		
		default:
			print("\(etu) ==> ??????");
	}
}


//Question 7
print(" ");
print("-----Question 7-----");
print(" ");

func moyenne(unTab: [Int]) -> Double {
	var somme = 0;
	for note in unTab
	{
		somme = somme + note;
			
	}
	let moyenne = Double(somme)/Double(unTab.count);
	return moyenne;
}

func affStats(unDico: [String: [Int]], fStat: ([Int]) -> Double) {
	for (nom, notes) in unDico{
		let st = fStat(notes);
		print("nom:\(nom) : stats: \(st)");
	}
}

affStats(unDico: ToutesNotes, fStat: moyenne);

//----méthode longue
var test = [12, 15, 20, 5, 14, 3, 6];
func s(a: Int, b: Int) -> Bool{
	return a<b;
}

test.sort(by: s);
//----Fin méthode longue

test.sort(by: {$0<$1}) //même résultat que "test.sort(by: s);" mais en mode SUPERFLEMMARD sans écrire la fonction

//Question 8
print(" ");
print("-----Question 8-----");
print(" ");

func mediane(unTab: [Int]) -> Double{
	var unTab = unTab;
	 unTab.sort(by: {$0<$1});
	return Double(unTab[unTab.count/2])
}

affStats(unDico: ToutesNotes, fStat: mediane);
