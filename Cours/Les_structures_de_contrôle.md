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
