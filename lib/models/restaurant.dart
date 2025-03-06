
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
      name: "Chicken Beliram",
      description: "Alway's Historic ",
      imagePath: "lib/images/nonveg/chicken_beliram.png", // Use assets for paths
      price: 100,
      category: FoodCategory.nonveg,
      availableAddons: [
        Addon(name: "Extra  Chicken Pieces", price: 10),
        Addon(name: "Extra Gravy", price: 50),
      ],
    ),

    Food(
      name: "Chicken Dum Biryani",
      description: "Taste of Hyderabad",
      imagePath: "lib/images/nonveg/chicken_dum_biryani.jpg", // Use assets for paths
      price: 120,
      category: FoodCategory.nonveg,
      availableAddons: [
        Addon(name: "Extra Rice", price: 90),
        Addon(name: "Extra Salad", price: 20),
      ],
    ),

    Food(
      name: "Chicken Tandoori",
      description: "Punjabi Tadka",
      imagePath: "lib/images/nonveg/chicken_tandoori.jpg", // Use assets for paths
      price: 90,
      category: FoodCategory.nonveg,
      availableAddons: [
        Addon(name: "Extra chicken Pieces", price: 90),
        Addon(name: "Extra chutney", price: 20),
      ],
    ),

    Food(
      name: "Kabuli Pulao",
      description: "Authentic and Delicious",
      imagePath: "lib/images/nonveg/kabuli_pulao.jpg", // Use assets for paths
      price: 80,
      category: FoodCategory.nonveg,
      availableAddons: [
        Addon(name: "Extra Rice", price: 90),
        Addon(name: "Extra Nuts", price: 50),
      ],
    ),

  Food(
      name: "Malai Chicken",
      description: "Taste the creamy and tender chicken",
      imagePath: "lib/images/nonveg/malai_chicken.jpg", // Use assets for paths
      price: 100,
      category: FoodCategory.nonveg,
      availableAddons: [
        Addon(name: "Extra Cream", price: 10),
        Addon(name: "Extra Chicken Pieces", price: 50),
      ],
    ),

    // dessert
    Food(
      name: "Meethe Chonge",
      description: "Kokni essence in every bite",
      imagePath: "lib/images/desserts/chonge.jpg",
      price: 60,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chonge", price: 10),
      ],
    ),

    Food(
      name: "Firni",
      description: "Ramzaan Special",
      imagePath: "lib/images/desserts/firni.jpg",
      price: 20,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Nuts", price: 20),
      ],
    ),

    Food(
      name: "Gajar ka Halwa",
      description: "Winter's special dessert",
      imagePath: "lib/images/desserts/gajar.jpg",
      price: 50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Nuts", price: 30),
      ],
    ),

    Food(
      name: "Ukdiche Modak",
      description: "Taste of Maharashtra",
      imagePath: "lib/images/desserts/modak.jpg",
      price: 50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Modak pieces", price: 10),
      ],
    ),

    Food(
      name: "Rasmalai",
      description: "Delicious and Perfect for every occasion",
      imagePath: "lib/images/desserts/rasmalai.jpg",
      price: 50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Nuts", price: 20),
      ],
    ),

    Food(
      name: "Sheerkhurma",
      description: "Eid Special",
      imagePath: "lib/images/desserts/sheerkhurma.jpg",
      price: 50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Nuts", price: 20),
      ],
    ),

    // seafood
    Food(
      name: " Fry Indian mackerel",
      description: "Indian mackerel Fry",
      imagePath: "lib/images/seafood/bangdafry.jpg",
      price: 120,
      category: FoodCategory.seafood,
      availableAddons: [
        Addon(name: "Extra Fish Pieces", price: 40),
      ],
    ),

    Food(
      name: "Indian mackerel Curry",
      description: "Kokni style Indian mackerel Curry",
      imagePath: "lib/images/seafood/bangdarassa.jpg",
      price: 100,
      category: FoodCategory.seafood,
      availableAddons: [
        Addon(name: "Extra Curry", price: 50),
      ],
    ),

    Food(
      name: "Fried Bombay Duck",
      description: "Crispy and Delicious Bombay Duck",
      imagePath: "lib/images/seafood/bombilfry.jpg",
      price: 90,
      category: FoodCategory.seafood,
      availableAddons: [
        Addon(name: "Extra Pieces", price: 40),
      ],
    ),

    Food(
      name: "Prwans Biryani",
      description: "Delicious Prawn Biryani",
      imagePath: "lib/images/seafood/Prawnsbiryani.jpg",
      price: 200,
      category: FoodCategory.seafood,
      availableAddons: [
        Addon(name: "Extra Rice", price: 50),
      ],
    ),

    Food(
      name: "Prwans Masala",
      description: "Authentic Prawn Masala",
      imagePath: "lib/images/seafood/prawnsmasala.jpg",
      price: 120,
      category: FoodCategory.seafood,
      availableAddons: [
        Addon(name: "Extra Curry", price: 50),
      ],
    ),

        Food(
      name: "Indo-Pacific king mackerel masala",
      description: "Authentic King Mackerel Curry",
      imagePath: "lib/images/seafood/surmaimasala.jpg",
      price: 250,
      category: FoodCategory.seafood,
      availableAddons: [
        Addon(name: "Extra Pieces", price: 60),
      ],
    ),

    // snacks
    Food(
      name: "Cheesy Potato Triangle",
      description: "Chessy and Delicious",
      imagePath: "lib/images/snacks/cheesypotatotriangle.jpg",
      price: 30,
      category: FoodCategory.snacks,
      availableAddons: [
        Addon(name: "Extra Chutney", price: 10),
      ],
    ),

    Food(
      name: "Chicken Bites",
      description: "tender and Delicious",
      imagePath: "lib/images/snacks/chickenbites.jpg",
      price: 40,
      category: FoodCategory.snacks,
      availableAddons: [
        Addon(name: "Extra Bites", price: 10),
      ],
    ),

    Food(
      name: "Chicken Burger",
      description: "Loaded Chicken Burger",
      imagePath: "lib/images/snacks/chickenburger.jpg",
      price: 60,
      category: FoodCategory.snacks,
      availableAddons: [
        Addon(name: "Extra Chicken patty", price: 20),
        Addon(name: "Extra Cheese", price: 10),
      ],
    ),


    Food(
      name: "Chicken Pizza",
      description: "Crispy Chicken pizza",
      imagePath: "lib/images/snacks/chickenpizza.jpg",
      price: 70,
      category: FoodCategory.snacks,
      availableAddons: [
        Addon(name: "Extra Chicken Pieces", price: 20),
        Addon(name: "Extra Veggies", price: 10),
      ],
    ),

    Food(
      name: "Shami Kebab",
      description: "Authentic and Delicious",
      imagePath: "lib/images/snacks/shamikebab.jpg",
      price: 20,
      category: FoodCategory.snacks,
      availableAddons: [
        Addon(name: "Extra Chutney", price: 10),
      ],
    ),

    // veg
    Food(
      name: "Aalu ki sabji",
      description: "Spicy and traditional style Aalu ki sabji",
      imagePath: "lib/images/veg/aalusabji.jpg",
      price: 30,
      category: FoodCategory.veg,
      availableAddons: [
        Addon(name: "Extra sabji", price: 20),
      ],
    ),

    Food(
      name: "Gavar ki Sabji",
      description: "Spicy gavar ki sabji",
      imagePath: "lib/images/veg/gavarsabji.jpg",
      price: 40,
      category: FoodCategory.veg,
      availableAddons: [
        Addon(name: "Extra sabji", price: 20),
      ],
    ),

    Food(
      name: "Lemon Rice",
      description: "lemoney and Delicious",
      imagePath: "lib/images/veg/lemonrice.jpg",
      price: 50,
      category: FoodCategory.veg,
      availableAddons: [
        Addon(name: "Extra Rice", price: 20),
      ],
    ),

    Food(
      name: "Paneer Butter Masala",
      description: "Rich and Creamy Paneer",
      imagePath: "lib/images/veg/paneer.png",
      price: 100,
      category: FoodCategory.veg,
      availableAddons: [
        Addon(name: "Extra Butter", price: 30),
      ],
    ),

    Food(
      name: "Paneer Burji",
      description: "Paneer with a twist",
      imagePath: "lib/images/veg/paneerburji.jpg",
      price: 110,
      category: FoodCategory.veg,
      availableAddons: [
        Addon(name: "Extra burji", price: 20),
      ],
    ),

        Food(
      name: "Capsicum gravy",
      description: "Capsicum gravy in a whole  different way",
      imagePath: "lib/images/veg/shimlamirchgravy.jpg",
      price: 50,
      category: FoodCategory.veg,
      availableAddons: [
        Addon(name: "Extra gravy", price: 20),
      ],
    ),
  ];

  

// user cart
  final List<CartItem> _cart = [];

  // delivery address( which user can change / update)
  String _deliveryAddress = "Maharashtra, India";

  /*
   GETTERS
   */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  // Get food items by category
  List<Food> getFoodByCategory(FoodCategory category) {
    return _menu.where((food) => food.category == category).toList();
  }

/*

 O P E R A T I O N S 

*/

// add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
// see if there is a cart item with the same food and addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons); // Ensure a boolean is returned

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

// update delivery address
  void updateDeliveryAddress(String newaddress) {
    _deliveryAddress = newaddress;
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
    receipt.writeln();
    receipt.writeln("Delivering to $_deliveryAddress");

    return receipt.toString();
  }

// format double value into money
  String _formatPrice(double price) {
    return "₹${price.toStringAsFixed(2)}";
  }

// format list of addons into a string summmary
  String _formatAddpns(List<Addon> addons) {
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(",");
  }
}
