enum Category{
  Cafe,
  Food,
  Machine
}

class Cart {

  Cart(this.id, this.category, this.productName, this.price);

  final int id;
  final Category category;
  final String productName;
  final int price;


}