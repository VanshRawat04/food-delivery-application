import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food items
  final List<Food> _menu = [
    //burgers
    Food(
      name: 'Classic Cheese Burger',
      description:
          "A classic hamburger topped with a slice of melted cheese, usually American, cheddar, or Swiss, adding a rich and creamy flavor",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: "Extra Cheese", price: 0.99),
        Addons(name: "Grilled Onions", price: 0.99),
        Addons(name: "mushrooms", price: 0.99),
        Addons(name: "Bacon Strips", price: 0.99),
        Addons(name: "Avacado Slices", price: 0.99),
        Addons(name: "Jalapeños", price: 0.99)
      ],
    ),
    Food(
      name: 'Bacon Burger',
      description:
          "A savory burger featuring a beef patty topped with crispy, smoky bacon, often paired with cheese and additional condiments.",
      imagePath: "lib/images/burgers/bacon_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: "Extra Bacon", price: 0.99),
        Addons(name: "Barbecue Sauce", price: 0.99),
        Addons(name: "mushrooms", price: 0.99),
        Addons(name: "Crispy Onion Rings", price: 0.99),
        Addons(name: "Pepper Jack Cheese", price: 0.99),
        Addons(name: "Fried Egg", price: 0.99)
      ],
    ),
    Food(
      name: 'Chicken Burger',
      description:
          "A burger made with a grilled or fried chicken breast, offering a lighter, tender protein option often paired with lettuce and mayonnaise.",
      imagePath: "lib/images/burgers/chicken_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: "Extra Cheese", price: 0.99),
        Addons(name: "Chipotle mayo", price: 0.99),
        Addons(name: "Swiss or provolone cheese", price: 0.99),
        Addons(name: "Bacon Strips", price: 0.99),
        Addons(name: "Avacado Slices", price: 0.99),
        Addons(name: "Jalapeños", price: 0.99)
      ],
    ),
    Food(
      name: 'Veggie Burger',
      description:
          "A plant-based burger made from vegetables, grains, and legumes, providing a healthy alternative to meat burgers.",
      imagePath: "lib/images/burgers/veggie_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: "Hummus", price: 0.99),
        Addons(name: "guacamole", price: 0.99),
        Addons(name: "Roasted red peppers", price: 0.99),
        Addons(name: "Vegan cheese", price: 0.99),
        Addons(name: "Avacado Slices", price: 0.99),
        Addons(name: "Jalapeños", price: 0.99),
        Addons(name: "Pickled vegetables", price: 0.99),
        Addons(name: "Sprouts or mixed greens", price: 0.99),
      ],
    ),
    Food(
      name: 'Mushroom Swiss Burger',
      description:
          "A gourmet burger topped with sautéed mushrooms and Swiss cheese, creating a rich and earthy flavor combination.",
      imagePath: "lib/images/burgers/mushroom_swiss_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addons(name: "Extra Cheese", price: 0.99),
        Addons(name: "Truffle aioli", price: 0.99),
        Addons(name: "Caramelized onions", price: 0.99),
        Addons(name: "Bacon Strips", price: 0.99),
        Addons(name: "Avacado Slices", price: 0.99),
        Addons(name: "Jalapeños", price: 0.99),
        Addons(name: "Crispy bacon", price: 0.99),
        Addons(name: 'Dijon mustard', price: 0.99),
      ],
    ),

    //salads
    Food(
      name: 'Caesar Salad',
      description:
          " A popular salad made with crisp romaine lettuce, crunchy croutons, Parmesan cheese, and Caesar dressing, often enhanced with grilled chicken.",
      imagePath: "lib/images/salads/ceasar_salad.png",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: "Grilled chicken", price: 0.99),
        Addons(name: "shrimp", price: 0.99),
        Addons(name: "mushrooms", price: 0.99),
        Addons(name: "Bacon Strips", price: 0.99),
        Addons(name: "Avacado Slices", price: 0.99),
        Addons(name: "Jalapeños", price: 0.99),
        Addons(name: "Bacon bits", price: 0.99),
        Addons(name: "Hard-boiled eggs", price: 0.99),
        Addons(name: "Croutons", price: 0.99),
        Addons(name: "Shaved Parmesan cheese", price: 0.99),
      ],
    ),
    Food(
      name: 'Greek Salad',
      description:
          "A fresh and vibrant salad featuring cucumbers, tomatoes, red onions, Kalamata olives, and feta cheese, typically dressed with olive oil and oregano.",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: "Grilled chicken", price: 0.99),
        Addons(name: "lamb", price: 0.99),
        Addons(name: "Pita bread", price: 0.99),
        Addons(name: "croutons", price: 0.99),
        Addons(name: "Extra olives", price: 0.99),
        Addons(name: "Feta cheese crumbles", price: 0.99),
        Addons(name: "Tzatziki sauce", price: 0.99),
      ],
    ),
    Food(
      name: 'Cobb Salad',
      description:
          "A hearty, protein-packed salad with mixed greens, grilled chicken, bacon, hard-boiled eggs, avocado, tomatoes, and blue cheese, served with vinaigrette",
      imagePath: "lib/images/salads/cobb_salad.png",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: "crispy chicken", price: 0.99),
        Addons(name: "Avocado slices", price: 0.99),
        Addons(name: "Blue cheese crumbles", price: 0.99),
        Addons(name: "Extra bacon bits", price: 0.99),
        Addons(name: "Ranch", price: 0.99),
        Addons(name: "balsamic vinaigrette", price: 0.99)
      ],
    ),
    Food(
      name: 'Caprese Salad',
      description:
          "A simple Italian salad made with fresh tomatoes, mozzarella cheese, and basil, drizzled with olive oil and balsamic vinegar.",
      imagePath: "lib/images/salads/caprese_salad.png",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: "Prosciutto slices", price: 0.99),
        Addons(name: "Balsamic glaze drizzle", price: 0.99),
        Addons(name: "Fresh basil pesto", price: 0.99),
        Addons(name: "Bacon Strips", price: 0.99),
        Addons(name: "Avacado Slices", price: 0.99),
        Addons(name: "Arugula leaves", price: 0.99)
      ],
    ),
    Food(
      name: 'Waldorf Salad',
      description:
          "A sweet and tangy salad made with apples, celery, grapes, and walnuts, typically dressed in mayonnaise.",
      imagePath: "lib/images/salads/waldorf_salad.png",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addons(name: "Grilled chicken", price: 0.99),
        Addons(name: "turkey", price: 0.99),
        Addons(name: "Dried cranberries", price: 0.99),
        Addons(name: "raisins", price: 0.99),
        Addons(name: "Candied walnuts", price: 0.99),
        Addons(name: "Gorgonzola cheese crumbles", price: 0.99),
        Addons(name: "Fresh pear slices", price: 0.99),
      ],
    ),

    //sides
    Food(
      name: 'French Fries',
      description:
          "Thin, deep-fried potato sticks that are crispy on the outside and soft on the inside, often seasoned with salt",
      imagePath: "lib/images/sides/french_fried.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: "Cheese sauce", price: 0.99),
        Addons(name: "melted cheddar", price: 0.99),
        Addons(name: "Chili for chili cheese fries", price: 0.99),
        Addons(name: "Truffle oil drizzle", price: 0.99),
        Addons(name: "Bacon bits", price: 0.99),
        Addons(name: "Garlic parmesan seasoning", price: 0.99)
      ],
    ),
    Food(
      name: 'Onion Rings',
      description:
          "Sliced onions coated in batter and deep-fried until crispy, offering a savory and slightly sweet taste.",
      imagePath: "lib/images/sides/onion_rings.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: "Ranch", price: 0.99),
        Addons(name: "Barbecue Sauce", price: 0.99),
        Addons(name: "Spicy sriracha mayo", price: 0.99),
        Addons(name: "Cheese sauce", price: 0.99),
        Addons(name: "Jalapeño slices", price: 0.99),
        Addons(name: "Sweet chili sauce", price: 0.99)
      ],
    ),
    Food(
      name: 'Mozzarella Sticks',
      description:
          "Breaded and deep-fried sticks of mozzarella cheese, often served with marinara sauce for dipping.",
      imagePath: "lib/images/sides/mozzarella_sticks.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: "Marinara", price: 0.99),
        Addons(name: "pizza sauce", price: 0.99),
        Addons(name: "Ranch", price: 0.99),
        Addons(name: "blue cheese dressing", price: 0.99),
        Addons(name: "Spicy marinara", price: 0.99),
        Addons(name: "Garlic butter dip", price: 0.99),
        Addons(name: "Extra parmesan cheese", price: 0.99),
      ],
    ),
    Food(
      name: 'Chicken Nuggets',
      description:
          "Bite-sized pieces of chicken that are breaded and fried, typically served with a variety of dipping sauces.",
      imagePath: "lib/images/sides/chicken_nuggets.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: "EHoney mustard", price: 0.99),
        Addons(name: "barbecue sauce", price: 0.99),
        Addons(name: "Buffalo sauce", price: 0.99),
        Addons(name: "Ranch", price: 0.99),
        Addons(name: "blue cheese dip", price: 0.99),
        Addons(name: "Teriyaki glaze", price: 0.99),
        Addons(name: "Sweet and sour sauce", price: 0.99),
      ],
    ),
    Food(
      name: 'Cheese Nuggets',
      description:
          "crispy, fried bites filled with gooey, melted cheese, perfect as a snack or appetizer.",
      imagePath: "lib/images/sides/cheese_nuggets.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addons(name: "hredded cheese on top", price: 0.99),
        Addons(name: "Chopped chives", price: 0.99),
        Addons(name: "green onions", price: 0.99),
        Addons(name: "Crispy bacon bits", price: 0.99),
        Addons(name: "Garlic butter", price: 0.99),
        Addons(name: "truffle oil", price: 0.99),
      ],
    ),

    //deserts
    Food(
      name: 'Chocolate Cake',
      description:
          "A dense and moist cake made with cocoa or melted chocolate, often layered with chocolate frosting for an indulgent treat",
      imagePath: "lib/images/deserts/chocolate_cake.png",
      price: 0.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addons(name: "Whipped cream", price: 0.99),
        Addons(name: "ice cream", price: 0.99),
        Addons(name: "Chocolate ganache", price: 0.99),
        Addons(name: "fudge sauce", price: 0.99),
        Addons(name: "Fresh berries", price: 0.99),
        Addons(name: "Crushed nuts", price: 0.99),
        Addons(name: "Sprinkles", price: 0.99),
        Addons(name: "chocolate shavings", price: 0.99),
      ],
    ),
    Food(
      name: 'Apple Pie',
      description:
          "A classic dessert with a flaky crust filled with sweet and spiced apples, typically served warm with a scoop of vanilla ice cream.",
      imagePath: "lib/images/deserts/apple_pie.png",
      price: 0.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addons(name: "Vanilla ice cream", price: 0.99),
        Addons(name: "whipped cream", price: 0.99),
        Addons(name: "Caramel sauce", price: 0.99),
        Addons(name: "Cinnamon sugar dusting", price: 0.99),
        Addons(name: "Cinnamon sugar dusting", price: 0.99),
        Addons(name: "Sliced almonds", price: 0.99)
      ],
    ),
    Food(
      name: 'Tiramisu',
      description:
          "An Italian dessert made with layers of coffee-soaked ladyfingers, mascarpone cheese, and cocoa powder.",
      imagePath: "lib/images/deserts/tiramisu.png",
      price: 0.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addons(name: "Extra cocoa powder dusting", price: 0.99),
        Addons(name: "Chocolate shavings", price: 0.99),
        Addons(name: "Fresh berries on top", price: 0.99),
        Addons(name: "Espresso-soaked ladyfingers", price: 0.99),
        Addons(name: "Whipped cream", price: 0.99),
      ],
    ),
    Food(
      name: 'Pavlova',
      description:
          "A meringue-based dessert with a crisp crust and soft, marshmallow-like center, topped with whipped cream and fresh fruits like berries or kiwi",
      imagePath: "lib/images/deserts/pavlova.png",
      price: 0.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addons(name: "Extra whipped cream", price: 0.99),
        Addons(name: "Mixed fresh berries", price: 0.99),
        Addons(name: "passionfruit", price: 0.99),
        Addons(name: "Chocolate drizzle", price: 0.99),
        Addons(name: "Mint leaves", price: 0.99),
        Addons(name: "lime zest", price: 0.99)
      ],
    ),
    Food(
      name: 'Blueberry Cheesecake',
      description:
          "A creamy dessert made from a mixture of cream cheese, eggs, and sugar on a graham cracker crust, often topped with blueberrry or chocolate.",
      imagePath: "lib/images/deserts/blueberry_cheesecake.png",
      price: 0.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addons(name: "Fresh fruit topping", price: 0.99),
        Addons(name: "caramel drizzle", price: 0.99),
        Addons(name: "Whipped cream", price: 0.99),
        Addons(name: "Crushed cookies", price: 0.99),
        Addons(name: "graham cracker crumbs", price: 0.99),
        Addons(name: "Nuts", price: 0.99)
      ],
    ),
    Food(
      name: 'Stawberry Cheesecake',
      description:
          "A creamy dessert made from a mixture of cream cheese, eggs, and sugar on a graham cracker crust, often topped with stawberries or chocolate.",
      imagePath: "lib/images/deserts/stawberry_cheesecake.png",
      price: 0.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addons(name: "Fresh fruit topping", price: 0.99),
        Addons(name: "caramel drizzle", price: 0.99),
        Addons(name: "Whipped cream", price: 0.99),
        Addons(name: "Crushed cookies", price: 0.99),
        Addons(name: "graham cracker crumbs", price: 0.99),
        Addons(name: "Nuts", price: 0.99)
      ],
    ),

    //drinks
    Food(
      name: 'Lemonade',
      description:
          " A sweet and tangy drink made from freshly squeezed lemons, water, and sugar, often served cold and refreshing",
      imagePath: "lib/images/drinks/lemonade.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: "Fresh mint leaves", price: 0.99),
        Addons(name: "Berries", price: 0.99),
        Addons(name: "Ginger", price: 0.99),
        Addons(name: "basil infusion", price: 0.99),
        Addons(name: "Sparkling water", price: 0.99),
        Addons(name: "Honey", price: 0.99),
        Addons(name: 'agave syrup', price: 0.99),
      ],
    ),
    Food(
      name: 'Iced Tea',
      description:
          "A chilled tea beverage, sometimes sweetened, and flavored with lemon or other fruits, perfect for hot weather.",
      imagePath: "lib/images/drinks/iced_tea.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: "Lemon", price: 0.99),
        Addons(name: "Fresh mint", price: 0.99),
        Addons(name: "basil leaves", price: 0.99),
        Addons(name: "Peach", price: 0.99),
        Addons(name: "raspberry syrup", price: 0.99),
        Addons(name: "Honey", price: 0.99),
        Addons(name: 'agave syrup ', price: 0.99)
      ],
    ),
    Food(
      name: 'Smoothie',
      description:
          " A thick, blended drink made from fresh fruits, yogurt, and sometimes vegetables, known for being a nutritious and filling option.",
      imagePath: "lib/images/drinks/smoothie.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: "Protein powder", price: 0.99),
        Addons(name: "yogurt", price: 0.99),
        Addons(name: "Chia seeds", price: 0.99),
        Addons(name: "Fresh spinach", price: 0.99),
        Addons(name: "Almond butter", price: 0.99),
        Addons(name: "Coconut flakes", price: 0.99)
      ],
    ),
    Food(
      name: 'Mojito',
      description:
          " A refreshing Cuban cocktail made with rum, fresh lime juice, mint leaves, sugar, and soda water, offering a sweet and tangy flavor with a minty finish.",
      imagePath: "lib/images/drinks/mojito.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(name: "Fresh berries", price: 0.99),
        Addons(name: "Coconut rum", price: 0.99),
        Addons(name: "Mango", price: 0.99),
        Addons(name: "pineapple chunks", price: 0.99),
        Addons(name: "Ginger", price: 0.99),
        Addons(name: "cucumber slices", price: 0.99),
        Addons(name: ' tonic water', price: 0.99)
      ],
    ),
    Food(
      name: 'Latte',
      description:
          "A creamy coffee drink made with espresso and steamed milk, often topped with a light layer of foam, perfect for coffee lovers.",
      imagePath: "lib/images/drinks/latte.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addons(
            name: "Flavored syrups (vanilla, caramel, hazelnut)", price: 0.99),
        Addons(name: "Extra shot of espresso", price: 0.99),
        Addons(name: "Whipped cream topping", price: 0.99),
        Addons(name: "Cinnamon sprinkle", price: 0.99),
        Addons(name: "cocoa powder sprinkle", price: 0.99),
        Addons(name: "Almond milk", price: 0.99)
      ],
    ),
  ];
  /*

  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  /*

   O P E R A T I O N S

  */

  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addons> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

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

  // get total price of the cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addons addons in cartItem.selectedAddons) {
        itemTotal += addons.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in the cart
  int getTotalItemCont() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  /*

  H E L P E R S

  */

  //generate reciept
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss')
        .format(DateTime.now()); // Corrected 'm' to 'mm'
    receipt.writeln("Date: $formattedDate"); // Added Date: label
    receipt.writeln('------------');

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(
            "Add-ons: ${_formatAddons(cartItem.selectedAddons).join(", ")}"); //join addon list
        receipt.writeln();
      }
      receipt.writeln('------------');
    }

    receipt.writeln(); // Added a blank line before totals
    receipt.writeln("Total Items: ${getTotalItemCont()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return '₹${price.toStringAsFixed(2)}';
  }
  //format list of addons into a string summary

  Iterable<String> _formatAddons(List<Addons> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})");
  }
}
