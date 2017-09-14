import Foundation
//EXO 2
//:----

//Question 1:

let listeEtudiants = ["Robert Martin MMI1","Anne Dupond I2M", "Jean Jacques GEII","Isabelle Laporte I2M", "Sophie Legrand GEII","Francois Gerard I2M","Alice Martin SRC" ]

//Question 2:

let noteEtu = [
	"Robert Martin":10,
	"Anne Dupond":5, 
	"Jean Jacques":11,
	"Isabelle Laporte":8,	
]
for (nom,note) in noteEtu {
	print("nom: \(nom) note: \(note)")
	
}

//Question 3:

let ToutesNoteEtu = [
	"Robert Martin":[10, 13, 14, 8, 11],
	"Anne Dupond":[5, 3, 10, 3, 7], 
	"Jean Jacques":[11, 20, 17, 2, 3],
	"Isabelle Laporte":[8, 10, 10, 11, 9]	
]

//Question 4:

print("Moyenne\n")
for (etu,tabN) in ToutesNoteEtu {
	var s = 0
	for n in tabN {
		s = s + n
	}
	let m = Double(s)/Double(tabN.count)
	print(" nom: \(etu) note: \(m)")
}

//Question 5:

print("Max\n")
for (etu,tabN) in ToutesNoteEtu {
	var max = 0
	for n in tabN {
		if n > max {
			max = n
		}
	}
	print("nom: \(etu) note: \(max)")
}

//Question 6:

var mmi = [String]()
var geii = [String]()
var i2m = [String]()

for etud in listeEtudiants
{
	switch etud {
		case _ where etud.contains("GEII"):
			print ("\(etud) ==> GEII")
			geii.append(etud)
		case _ where etud.contains("I2M"):
			print ("\(etud) ==> I2M")
			i2m.append(etud)
		case _ where etud.contains("SRC"):
			print ("\(etud) ==> SRC")
		case _ where etud.contains("MMI"):
			print ("\(etud) ==> MMI")
			mmi.append(etud)
		default:
			print ("\(etud) ==> ????")
	}
}

//Question 7:

print("Question 7\n")

func moyenne(unTab: [Int])-> Double{
	
	
	var s = 0
	for n in unTab {
		s = s + n
	}
	let m = Double(s)/Double(unTab.count)
	return m
}


func affStats(unDico: [String: [Int]], fStat: ([Int])-> Double) {
	
	for (nom, notes) in unDico{
	let st = fStat(notes)
		print("nom:\(nom) : stat:\(st)")
	}
}
affStats(unDico: ToutesNoteEtu, fStat: moyenne)

var test = [12, 23, 12, 10, 2, 13]

func s(a: Int, b:Int) -> Bool
{ return a < b 
}
test.sort(by: s)

//test.sort(by: { $0 < $1 })//Methode flemmard similaire a la func s

//Question 8:

print("Question 8\n")

func mediane(unTab: [Int])-> Double{
	var unTab = unTab
	unTab.sort(by: {$0<$1})
	return Double(unTab[unTab.count/2])
}
affStats(unDico: ToutesNoteEtu, fStat: mediane)
