class House{
  int? id;
  String? name;
  double? price;
  House(int id, String name, double price){
    this.id=id;
    this.name=name;
    this.price=price;
    print("ID: $id, Name: $name, price: $price in millions");
  }
}

void main(){
  House h1 = House(4,"Home",4);
  House h2 = House(1, "Abode", 5);
  House h3 = House(2, "Nova", 2);
}