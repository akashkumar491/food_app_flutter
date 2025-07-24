import 'food_item.dart';

class Restaurant {
  final String id;
  final String name;
  final String imageUrl;
  final String address;
  final List<FoodItem> menu;

  Restaurant({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.address,
    required this.menu,
  });
}
