# Protocoles

> Déclarer un "plan" de fonctionnalités à travers des méthodes et propriétés qui seront nécessaires pour la réalisation d'une tâche spécifique
- Exemple : le protocole _UICollisionBehaviorDelegate_ déclare des méthodes pour gérer les collisions physiques

Le protocole ne propose aucune implémentation.
Un protocole peut être adopté par une classe en implémentant les méthodes et propriétés requises.

### Déclaration
```Swift
protocol Monprotocole {
  // Définition du protocole
}
```
Type adoptant ce protocole
```Swift
struct UneStruct: PremierProto, DeuxiemeProto {
  // Définition de la structure
}
```

### Contraintes
- Un protocole peut spécifier des exigences sur les propriétés.
- Uniquement sur le nom, le type de la propriété et le type d'accès : set/get exigé.
- Pas de contraintes sur la façon dont est stockée/calculée la propriété.

```Swift
protocol Monprotocole {
  var MaPropriétéAccesLectEcr : Int {get set};
  var MaPropriétéAccesLect : Int {get};
}
```
Exemple :
```Swift
protocol Descriptible {
  var Description : String {get};
}

struct UnObjetAVendre : Descriptible {
  var description :String;
}
let monOrdi = UnObjetAVendre (description : "Une description");
```

### Contraintes sur les méthodes
> Un protocole peut spécifier des exigences sur la présence de méthode.
Ces méthodes se déclarent comme une vraie méthode :
```Swift
protocol MonProtocole {
  func maFonction();
}
```
Exemple :
```Swift
protocol Descriptible {
  var Description : String {get};
  func calculPrix() -> Int;
}
```

__Un protocole peut être considéré comme un type, même si il n'implémente rien.__
