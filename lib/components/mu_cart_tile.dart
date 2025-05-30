import 'package:flutter/material.dart';
import 'package:food_ordering_app/components/my_quantity_selector.dart';
import 'package:food_ordering_app/models/cart_item.dart';
import 'package:food_ordering_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name),
                      Text("₹${cartItem.food.price.toString()}"),
                    ],
                  ),
                  const Spacer(),
                  MyQuantitySelector(
                      quantity: cartItem.quantity,
                      food: cartItem.food,
                      onDecrement: () {
                        restaurant.removeFromCart(cartItem);
                      },
                      onIncrement: () {
                        restaurant.addToCart(
                            cartItem.food, cartItem.selectedAddons);
                      })
                ],
              ),
            ),
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                children: cartItem.selectedAddons.map(
                  (addon) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: FilterChip(
                        label: Row(
                          children: [
                            Text(addon.name),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "₹${addon.price.toString()}",
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                          ],
                        ),
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        onSelected: (value) {},
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                        labelStyle: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                    );
                  },
                ).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
