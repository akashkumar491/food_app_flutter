import 'package:flutter/material.dart';
import '../models/restaurant.dart';
import '../widgets/food_card.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../models/cart_item.dart';
import '../widgets/custom_app_bar.dart';

class RestaurantDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Restaurant restaurant =
        ModalRoute.of(context)!.settings.arguments as Restaurant;

    return Scaffold(
      appBar: CustomAppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // You can adjust these breakpoints as needed
          if (constraints.maxWidth >= 1200) {
            // Desktop
            return _buildDesktop(context, restaurant);
          } else if (constraints.maxWidth >= 600) {
            // Tablet
            return _buildTablet(context, restaurant);
          } else {
            // Mobile
            return _buildMobile(context, restaurant);
          }
        },
      ),
    );
  }

  // MOBILE LAYOUT (Column, as before)
  Widget _buildMobile(BuildContext context, Restaurant restaurant) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                restaurant.imageUrl,
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          GridView.count(
            crossAxisCount: 1,
            childAspectRatio: 0.9,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            shrinkWrap: true, // <--- Important!
            physics: NeverScrollableScrollPhysics(), // <--- Important!
            children: [
              ...restaurant.menu.map(
                (food) => FoodCard(
                  food: food,
                  onAdd: () {
                    Provider.of<CartProvider>(
                      context,
                      listen: false,
                    ).addToCart(CartItem(foodItem: food));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // TABLET LAYOUT (Wider image, bigger text, still vertical)
  Widget _buildTablet(BuildContext context, Restaurant restaurant) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                restaurant.imageUrl,
                height: 500,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            shrinkWrap: true, // <--- Important!
            physics: NeverScrollableScrollPhysics(), // <--- Important!
            children: [
              ...restaurant.menu.map(
                (food) => FoodCard(
                  food: food,
                  onAdd: () {
                    Provider.of<CartProvider>(
                      context,
                      listen: false,
                    ).addToCart(CartItem(foodItem: food));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // DESKTOP LAYOUT (Image on left, details and menu on right)
  Widget _buildDesktop(BuildContext context, Restaurant restaurant) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top banner image
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              clipBehavior: Clip.antiAlias, // Ensure border radius clips image
              child: Image.network(
                restaurant.imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 32),
            // Grid of food options
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              shrinkWrap: true, // <--- Important!
              physics: NeverScrollableScrollPhysics(), // <--- Important!
              children: [
                ...restaurant.menu.map(
                  (food) => FoodCard(
                    food: food,
                    onAdd: () {
                      Provider.of<CartProvider>(
                        context,
                        listen: false,
                      ).addToCart(CartItem(foodItem: food));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
