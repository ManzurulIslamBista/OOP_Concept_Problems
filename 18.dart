class Restaurant {
  List<MenuItems> menu_items = [];

  void add_menu_item(MenuItems menu_item) {
    menu_items.add(menu_item);
  }

  double get_avs_rating() {
    double total_ratings = 0.00;
    menu_items.forEach((item) {
      total_ratings += item.ratings;
    });
    return total_ratings / menu_items.length;
  }

  void remove_item(String menu) {
    menu_items.removeWhere((element) => element.menu_item == menu);
    print("'$menu' removed");
  }
}

class MenuItems {
  String menu_item;
  double price;
  double ratings;

  MenuItems(this.menu_item, this.price, this.ratings);
}

void main() {
  MenuItems item1 = MenuItems("Burger", 250.00, 3.5);
  MenuItems item2 = MenuItems("Chiken", 150.00, 4.5);
  MenuItems item3 = MenuItems("Fried Rice", 450.00, 2.5);

  Restaurant res = Restaurant();
  res.add_menu_item(item1);
  res.add_menu_item(item2);
  res.add_menu_item(item3);
  print("Average Rating : ${res.get_avs_rating()}");
  res.remove_item("Chiken");
  print("Average Rating : ${res.get_avs_rating()}");
}
