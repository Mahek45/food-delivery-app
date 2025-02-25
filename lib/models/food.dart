class Food {
  final String name; // cheese burger
  final String description; //a burger full of cheese
  final String imagePath; //assets/images/cheese_burger.png
  final double price; //79$
  final FoodCategory category; // buger
  List<Addon> availableAddons; //Extra cheese
  
  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

//food categories
enum FoodCategory {
  nonveg,
  veg,
  snacks,
  desserts,
  seafood,
}

//food addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price});
}
