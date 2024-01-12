class Product {
  String name;
  double price;
  int qty;
  Product({required this.name, required this.price, required this.qty});
}

class Inventory {
  List<Product> product = [];

  void add_product(Product pdt) {
    product.add(pdt);
    print("${pdt.name} added");
  }

  void remove_product(String name) {
    product.removeWhere((element) => element.name == name);
  }

  void Show_low_product_list() {
    product.forEach((element) {
      if (element.qty < 50) {
        print("Name : '${element.name}' Price : ${element.price}");
      }
    });
  }
}

void main() {
  Product pro = Product(name: "BMW", price: 2500000.00, qty: 100);
  Product pro2 = Product(name: "Lamborgini", price: 5500000.00, qty: 40);

  Inventory inven = Inventory();
  inven.add_product(pro);
  inven.add_product(pro2);
  inven.Show_low_product_list();
  inven.remove_product("Lamborgini");
}
