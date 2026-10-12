class Product{
  String name = "";
  String category = "";
  double price = 0;
  Product(this.name, this.category, this.price);
}

Map<String, double> totalByCategory(List<Product> products){
    var map = Map<String,double>();
    for(var product in products)
      map[product.category] = (map[product.category]??0) + product.price;
    return map;
}