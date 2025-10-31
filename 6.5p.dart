class Camera{
  int? _id;
  String? _brand;
  String? _colour;
  double? _price;
  Camera(int id, String _brand, String _colour, double _price){
    this._id = _id;
    this._brand=_brand;
    this._colour=_colour;
    this._price=_price;
  }
  int? get id => _id;
  String? get brand => _brand;
  String? get color => _colour;
  double? get price => _price;


  set id(int? value) => _id = value;
  set brand(String? value) => _brand = value;
  set color(String? value) => _colour = value;
  set price(double? value) => _price = value;

  void display(){
    print('Camera ID: $_id');
    print('Brand: $_brand');
    print('Color: $_colour');
    print('Price: \$$_price');
  }
}

void main(){
  Camera cam1 = Camera(4, 'Canon', 'Black', 55000.0);
  Camera cam2 = Camera(1, 'Nikon', 'Silver', 48000.5);
  Camera cam3 = Camera(2, 'Sony', 'Red', 60000.0);

  cam1.display();
  cam2.display();
  cam3.display();

}
