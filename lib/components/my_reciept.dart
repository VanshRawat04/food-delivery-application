import "package:flutter/material.dart";
import "package:food_ordering_app/models/restaurant.dart";
import "package:provider/provider.dart";

class MyReciept extends StatelessWidget {
  const MyReciept({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Thank you for your order !"),
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary),
                  borderRadius: BorderRadius.circular(24)),
              padding: const EdgeInsets.all((25)),
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) =>
                    Text(restaurant.displayCartReceipt()),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text("Estimated Delivery Time"),
          ],
        ),
      ),
    );
  }
}
