class Dog {
  String name = "doggy";
  String breed = "Hybrid";

  Dog(String name, String breed) {
    this.name = name;
    this.breed = breed;
  }

  void setName(String newName) {
    name = newName;
  }

  void setBreed(String newBreed) {
    breed = newBreed;
  }

  String get dogDetails => "Name: $name, Breed: $breed";
}

void main() {
  Dog dog1 = Dog("Buddy", "Labrador");
  Dog dog2 = Dog("Max", "Golden Retriever");

  print("Dog 1 - ${dog1.dogDetails}");
  print("Dog 2 - ${dog2.dogDetails}");

  dog1.setName("Charlie");
  dog2.setBreed("Beagle");

  print("\nUpdated values:");
  print("Dog 1 - ${dog1.dogDetails}");
  print("Dog 2 - ${dog2.dogDetails}");
}
