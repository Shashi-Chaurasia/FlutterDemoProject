class CatalogModel {
  static final items  = [
  Item(
    "001", 
    "iphone13 pro" , 
    "Apple iphone 13 generation", 
    999, 
    "#33505a", 
    "assests/images/iphone13.png",)
];
}
class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);

  

}

