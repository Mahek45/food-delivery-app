
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_deliver/models/cart_item.dart';
import 'package:intl/intl.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  // List of food menu
  final List<Food> _menu = [
    // nonveg
    Food(
      name: "Butter Chicken",
      description: "Utterly  Delicious Butter Chicken",
      imagePath: "lib/images/nonveg/butter_chicken.png", // Use assets for paths
      price: 80,
      category: FoodCategory.nonveg,
      availableAddons: [
        Addon(name: "Extra Butter", price: 90),
        Addon(name: "Extra Gravy", price: 110),
      ],
    ),

    Food(
      name: "Butter Chicken",
      description: "Utterly  Delicious Butter Chicken",
      imagePath: "lib/images/nonveg/butter_chicken.png", // Use assets for paths
      price: 80,
      category: FoodCategory.nonveg,
      availableAddons: [
        Addon(name: "Extra Butter", price: 90),
        Addon(name: "Extra Gravy", price: 110),
      ],
    ),

    Food(
      name: "Butter Chicken",
      description: "Utterly Delicious Butter Chicken",
      imagePath: "lib/images/nonveg/butter_chicken.png", // Use assets for paths
      price: 80,
      category: FoodCategory.nonveg,
      availableAddons: [
        Addon(name: "Extra Butter", price: 90),
        Addon(name: "Extra Gravy", price: 110),
      ],
    ),

    Food(
      name: "Butter Chicken",
      description: "Utterly Delicious Butter Chicken",
      imagePath: "lib/images/nonveg/butter_chicken.png", // Use assets for paths
      price: 80,
      category: FoodCategory.nonveg,
      availableAddons: [
        Addon(name: "Extra Butter", price: 90),
        Addon(name: "Extra Gravy", price: 110),
      ],
    ),

    Food(
      name: "Butter Chicken",
      description: "Utterly Butterly Delicious Butter Chicken",
      imagePath: "lib/images/nonveg/butter_chicken.png", // Use assets for paths
      price: 80,
      category: FoodCategory.nonveg,
      availableAddons: [
        Addon(name: "Extra Butter", price: 90),
        Addon(name: "Extra Gravy", price: 110),
      ],
    ),

    // dessert
    Food(
      name: "Halwa",
      description: "Delicious Halwa",
      imagePath: "lib/images/desserts/firni.jpg",
      price: 50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Nuts", price: 20),
      ],
    ),

    Food(
      name: "butter",
      description: "Delicious ",
      imagePath: "lib/images/desserts/gajar.jpg",
      price: 50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Nuts", price: 20),
      ],
    ),

    Food(
      name: "butter",
      description: "Delicious Halwa",
      imagePath: "lib/images/desserts/chonge.jpg",
      price: 50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Nuts", price: 20),
      ],
    ),

    Food(
      name: "butter",
      description: "Delicious ",
      imagePath: "lib/images/desserts/sheerkhurma.jpg",
      price: 50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Nuts", price: 20),
      ],
    ),

    Food(
      name: "butter",
      description: "Delicious 1 ",
      imagePath: "lib/images/desserts/rasmalai.jpg",
      price: 50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Nuts", price: 20),
      ],
    ),

    Food(
      name: "butter",
      description: "Delicious 1 ",
      imagePath: "lib/images/desserts/modak.jpg",
      price: 50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Nuts", price: 20),
      ],
    ),

    // seafood
    Food(
      name: "Surmai Fish Curry",
      description: "Authentic Surmai Curry",
      imagePath: "seafood/surmai.png",
      price: 120,
      category: FoodCategory.seafood,
      availableAddons: [
        Addon(name: "Extra Curry", price: 50),
      ],
    ),

    Food(
      name: "Surmai Fish Curry",
      description: "Authentic Surmai Curry",
      imagePath: "seafood/surmai.png",
      price: 120,
      category: FoodCategory.seafood,
      availableAddons: [
        Addon(name: "Extra Curry", price: 50),
      ],
    ),

    Food(
      name: "Surmai Fish Curry",
      description: "Authentic Surmai Curry",
      imagePath: "seafood/surmai.png",
      price: 120,
      category: FoodCategory.seafood,
      availableAddons: [
        Addon(name: "Extra Curry", price: 50),
      ],
    ),

    Food(
      name: "Surmai Fish Curry",
      description: "Authentic Surmai Curry",
      imagePath: "seafood/surmai.png",
      price: 120,
      category: FoodCategory.seafood,
      availableAddons: [
        Addon(name: "Extra Curry", price: 50),
      ],
    ),

    Food(
      name: "Surmai Fish Curry",
      description: "Authentic Surmai Curry",
      imagePath: "seafood/surmai.png",
      price: 120,
      category: FoodCategory.seafood,
      availableAddons: [
        Addon(name: "Extra Curry", price: 50),
      ],
    ),

    // snacks
    Food(
      name: "Pakora",
      description: "Crispy and Delicious Pakoras",
      imagePath: "snacks/pakora.png",
      price: 30,
      category: FoodCategory.snacks,
      availableAddons: [
        Addon(name: "Extra Chutney", price: 10),
      ],
    ),

    Food(
      name: "Pakora",
      description: "Crispy and Delicious Pakoras",
      imagePath: "snacks/pakora.png",
      price: 30,
      category: FoodCategory.snacks,
      availableAddons: [
        Addon(name: "Extra Chutney", price: 10),
      ],
    ),

    Food(
      name: "Pakora",
      description: "Crispy and Delicious Pakoras",
      imagePath: "snacks/pakora.png",
      price: 30,
      category: FoodCategory.snacks,
      availableAddons: [
        Addon(name: "Extra Chutney", price: 10),
      ],
    ),

    Food(
      name: "Butter Chicken",
      description: "Delicious Indian dish",
      imagePath: "nonveg/butter_chicken.png", // No "assets/images/"
      price: 250.0,
      category: FoodCategory.nonveg,
      availableAddons: [],
    ),

    Food(
      name: "Pakora",
      description: "Crispy and Delicious Pakoras",
      imagePath: "snacks/pakora.png",
      price: 30,
      category: FoodCategory.snacks,
      availableAddons: [
        Addon(name: "Extra Chutney", price: 10),
      ],
    ),

    // veg
    Food(
      name: "Paneer Butter Masala",
      description: "Rich and Creamy Paneer",
      imagePath: "veg/paneer.png",
      price: 100,
      category: FoodCategory.veg,
      availableAddons: [
        Addon(name: "Extra Butter", price: 30),
      ],
    ),

    Food(
      name: "Paneer Butter Masala",
      description: "Rich and Creamy Paneer",
      imagePath: "veg/paneer.png",
      price: 100,
      category: FoodCategory.veg,
      availableAddons: [
        Addon(name: "Extra Butter", price: 30),
      ],
    ),

    Food(
      name: "Paneer Butter Masala",
      description: "Rich and Creamy Paneer",
      imagePath: "veg/paneer.png",
      price: 100,
      category: FoodCategory.veg,
      availableAddons: [
        Addon(name: "Extra Butter", price: 30),
      ],
    ),

    Food(
      name: "Paneer Butter Masala",
      description: "Rich and Creamy Paneer",
      imagePath: "veg/paneer.png",
      price: 100,
      category: FoodCategory.veg,
      availableAddons: [
        Addon(name: "Extra Butter", price: 30),
      ],
    ),

    Food(
      name: "Paneer Butter Masala",
      description: "Rich and Creamy Paneer",
      imagePath: "veg/paneer.png",
      price: 100,
      category: FoodCategory.veg,
      availableAddons: [
        Addon(name: "Extra Butter", price: 30),
      ],
    ),
  ];

  /*
   GETTERS
   */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  // Get food items by category
  List<Food> getFoodByCategory(FoodCategory category) {
    return _menu.where((food) => food.category == category).toList();
  }

/*

 O P E R A T I O N S 

*/

// user cart
  final List<CartItem> _cart = [];

// add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
// see if there is a cart item with the same food and addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons); // Ensure a boolean is returned

      return isSameFood && isSameAddons;
    });

// if item alraedy exists in cart, increment quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item
    else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }
// user cart

// remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

// get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

// get total number of items in cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

// clear cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

/*

 H E L P E R S  

*/

// generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.write("Here's your receipt.");
    receipt.writeln();

    //format the date to include up to seconds only
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-------------");

    for (final CartItem in _cart) {
      receipt.writeln("${CartItem.quantity} x ${CartItem.food.name} - ${_formatPrice(CartItem.food.price)} ");
      if (CartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons : ${_formatAddpns(CartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("------------");
    receipt.writeln();
    receipt.writeln(" Total Items : ${getTotalItemCount()}");
    receipt.writeln(" Total Price : ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

// format double value into money
  String _formatPrice(double price) {
    return "\$ ${price.toStringAsFixed(2)}";
  }

// format list of addons into a string summmary
  String _formatAddpns(List<Addon> addons) {
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(",");
  }
}
