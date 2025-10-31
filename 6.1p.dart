class Laptop{
  int? id;
  String? name;
  double? ram;

void display(int id, String name, double ram){
  print("ID: $id, Name: $name, RAM: $ram GB");
}

}

void main(){
  Laptop l1 = Laptop();
  Laptop l2 = Laptop();
  Laptop l3 = Laptop();

  l1.display(4, "Lenovo", 61.4);
  l2.display(3, "Asus", 281);
  l3.display(1, "MAC", 286);
}

