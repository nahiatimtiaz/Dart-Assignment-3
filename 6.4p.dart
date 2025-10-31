class Animal{
  int? id;
  String? name;
  String? colour;

}

class Cat extends Animal{
  String? sound;

  void display(int id, String name, String colour, String sound){
    print("The cat's ID is $id, her name is $name, her colour is $colour, and she $sound ");
  }
}

void main(){
  Cat c1= Cat();
  c1.display(4, "Nova", "White", "meows");
}