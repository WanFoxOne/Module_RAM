var myTestProperty :Int = 0 {
  willSet {
    print ("Avant affectation...");
  }
  didSet {
    print ("Après affectation...");
  }
}
