import '../models/restaurant.dart';
import '../models/food_item.dart';

final List<FoodItem> burgerKingMenu = [
  FoodItem(
    id: 'bk1',
    name: 'Whopper',
    price: 159,
    imageUrl:
        'https://images.unsplash.com/photo-1608767221051-2b9d18f35a2f?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description:
        'Juicy flame-grilled beef patty with fresh veggies and sauces.',
  ),
  FoodItem(
    id: 'bk2',
    name: 'Veggie Burger',
    price: 129,
    imageUrl:
        'https://images.unsplash.com/photo-1610970878459-a0e464d7592b?q=80&w=1524&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Delicious veg patty with lettuce, tomato, and creamy mayo.',
  ),
  FoodItem(
    id: 'bk3',
    name: 'French Fries',
    price: 99,
    imageUrl:
        'https://images.unsplash.com/photo-1518013431117-eb1465fa5752?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Crispy golden French fries.',
  ),
];

final List<FoodItem> pizzaHutMenu = [
  FoodItem(
    id: 'ph1',
    name: 'Margherita Pizza',
    price: 199,
    imageUrl:
        'https://images.unsplash.com/photo-1598023696416-0193a0bcd302?q=80&w=936&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Classic cheese Margherita pizza.',
  ),
  FoodItem(
    id: 'ph2',
    name: 'Veggie Supreme Pizza',
    price: 249,
    imageUrl:
        'https://images.unsplash.com/photo-1646907856044-2e0a6ae6dd97?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Loaded with crunchy veggies and melting cheese.',
  ),
  FoodItem(
    id: 'ph3',
    name: 'Garlic Bread',
    price: 89,
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1711752902321-ef7b72b28b26?q=80&w=388&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Freshly baked garlic bread.',
  ),
];

final List<FoodItem> starbucksMenu = [
  FoodItem(
    id: 'sb1',
    name: 'Caffè Latte',
    price: 180,
    imageUrl:
        'https://images.unsplash.com/photo-1616866860951-417035eda234?q=80&w=435&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Rich espresso and steamed milk.',
  ),
  FoodItem(
    id: 'sb2',
    name: 'Cappuccino',
    price: 190,
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1674327105280-b86494dfc690?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Bold espresso with a thick layer of foam.',
  ),
  FoodItem(
    id: 'sb3',
    name: 'Chocolate Croissant',
    price: 120,
    imageUrl:
        'https://images.unsplash.com/photo-1718897266472-5b7229ebdd3d?q=80&w=464&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    description: 'Buttery croissant with chocolate filling.',
  ),
];

final List<Restaurant> demoRestaurants = [
  Restaurant(
    id: 'r1',
    name: 'Burger King',
    imageUrl:
        'https://images.unsplash.com/photo-1716825340664-d52a315a0011?q=80&w=863&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    address: '12, Downtown Street, City',
    menu: burgerKingMenu,
  ),
  Restaurant(
    id: 'r2',
    name: 'Pizza Hut',
    imageUrl:
        'https://images.unsplash.com/photo-1638405988003-0c2621c4d7ea?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    address: '99, Main Avenue, City',
    menu: pizzaHutMenu,
  ),
  Restaurant(
    id: 'r3',
    name: 'Starbucks',
    imageUrl:
        'https://images.unsplash.com/photo-1545231027-637d2f6210f8?q=80&w=1335&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    address: '18, Park Lane, City',
    menu: starbucksMenu,
  ),
];
