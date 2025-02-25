import 'package:flutter/material.dart';
import 'package:food_deliver/models/cart_item.dart';
import 'package:food_deliver/models/restaurant.dart';
import 'package:provider/provider.dart';

import 'my_quantity _selector.dart';

class MyCartTitle extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTitle({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to left
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    cartItem.food.imagePath,
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(width: 10),

                // Name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartItem.food.name,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹${cartItem.food.price.toString()}",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary
                      ),
                    ),
                  ],
                ),
                const Spacer(),

                // Increment or decrement quantity
                QuantitySelector(
                  quantity: cartItem.quantity,
                  food: cartItem.food,
                  onDecrement: () {
                    restaurant.removeFromCart(cartItem);
                  },
                  onIncrement: () {
                    restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                  },
                ),
              ],
            ),

            // Addons
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                children: cartItem.selectedAddons
                    .map(
                      (addon) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: FilterChip(
                          label: Row(
                            children: [
                              // Addon name
                              Text(addon.name),
                        
                              // Addon price
                              Text('(\$${addon.price})'),
                            ],
                          ),
                          shape: StadiumBorder(side: BorderSide(color: Theme.of(context).colorScheme.primary)),
                          onSelected: (value) {},
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                          labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
