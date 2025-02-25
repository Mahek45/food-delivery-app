import 'package:flutter/material.dart';
import 'package:food_deliver/components/my_button.dart';
import 'package:food_deliver/models/food.dart';
import 'package:food_deliver/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;

  const FoodPage({
    super.key,
    required this.food,
  });

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  late Map<Addon, bool> selectedAddons;

  @override
  void initState() {
    super.initState();
    // Initialize selected addons to false
    selectedAddons = {
      for (var addon in widget.food.availableAddons) addon: false
    };
  }

//method to add to cart
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
// close the current food page to go back to menu
    Navigator.pop(context);

// format the selected addons
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }

    context.read<Restaurant>().addToCart(food,currentlySelectedAddons,);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Scaffold UI
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Food image
                Image.asset(widget.food.imagePath),

                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Food name
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      // Food price
                      Text(
                        '\$${widget.food.price}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),

                      const SizedBox(height: 10),

                      // Food description
                      Text(widget.food.description),

                      const SizedBox(height: 10),

                      Divider(color: Theme.of(context).colorScheme.secondary),

                      const SizedBox(height: 10),

                      // Addons
                      Text(
                        "Addons",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).colorScheme.secondary),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            // Get individual addon
                            Addon addon = widget.food.availableAddons[index];

                            // Return check box UI
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                '\$${addon.price}',
                                style: TextStyle(color: Theme.of(context).colorScheme.primary),
                              ),
                              value: selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  selectedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // Button -> Add to cart
                MyButton(
                  onTap: () => addToCart(widget.food, selectedAddons),
                  text: "Add to cart",
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ),

        // back button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        )
      ],
    );
  }
}
