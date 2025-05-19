import 'package:flutter/material.dart';
import 'package:food_ordering_app/components/my_button.dart';
import 'package:food_ordering_app/models/food.dart';
import 'package:food_ordering_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addons, bool> selectedAddons = {};
  FoodPage({
    super.key,
    required this.food,
  }) {
    for (Addons addons in food.availableAddons) {
      selectedAddons[addons] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addToCart(Food food, Map<Addons, bool> selectedAddons) {
    Navigator.pop(context);

    List<Addons> currentlySelectedAddons = [];
    for (Addons addons in widget.food.availableAddons) {
      if (widget.selectedAddons[addons] == true) {
        currentlySelectedAddons.add(addons);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                //food image
                Image.asset(widget.food.imagePath),

                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      //food price
                      Text(
                        "₹ ${widget.food.price}",
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      //food description
                      Text(
                        widget.food.description,
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Text(
                        "Add-Ons",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary),
                      ),

                      const SizedBox(
                        height: 16,
                      ),

                      //food addons
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),

                          ///51.47
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            Addons addons = widget.food.availableAddons[index];
                            return CheckboxListTile(
                                title: Text(addons.name),
                                subtitle: Text(
                                  "₹${addons.price}",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                value: widget.selectedAddons[addons],
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectedAddons[addons] = value!;
                                  });
                                });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                // buttons -> add to cart
                MyButton(
                    onTap: () => addToCart(widget.food, widget.selectedAddons),
                    text: 'Add to Cart'),
                const SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),
      ),
      SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              shape: BoxShape.circle),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    ]);
  }
}
