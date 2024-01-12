class Dog {
  String? _name = "doggy";
  String? _breed = "Hybrid";

  set name(String dog_name) => _name = dog_name;
  set breed(String dog_breed) => _breed = dog_breed;

  get dog_details => "Name : $_name Breed : $_breed";
}

void main() {
  Dog bulldog = Dog();
  print(bulldog.dog_details);

  bulldog._name = "Pappy";
  bulldog._breed = "Mixbreed";
  print(bulldog.dog_details);
}
