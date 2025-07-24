import 'package:flutter/material.dart';
import 'package:food_delivery/utils/constant.dart';
import 'package:food_delivery/widgets/restaurant_card.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveLayout({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width >= 600;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    if (isDesktop(context)) {
      return desktop;
    } else if (isTablet(context)) {
      return tablet;
    } else {
      return mobile;
    }
  }
}

class MobileHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Delivery'),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Nearby Restaurants',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 10),
          // Example: vertical restaurant cards
          ...demoRestaurants.map(
            (restaurant) => RestaurantCard(
              restaurant: restaurant,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/restaurant',
                  arguments: restaurant,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TabletHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Zilla',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  ...demoRestaurants.map(
                    (restaurant) => RestaurantCard(
                      restaurant: restaurant,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/restaurant',
                          arguments: restaurant,
                        );
                      },
                    ),
                  ),
                  // Add more cards as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DesktopHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Zilla',
          style: TextStyle(
            color: const Color.fromARGB(255, 19, 17, 17),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 250,
            color: const Color.fromARGB(255, 174, 133, 187),
            child: ListView(
              children: [
                ListTile(title: Text('All Restaurants'), onTap: () {}),
                ListTile(title: Text('Favourites'), onTap: () {}),
              ],
            ),
          ),
          // Main content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 0.9,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
                children: [
                  ...demoRestaurants.map(
                    (restaurant) => RestaurantCard(
                      restaurant: restaurant,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/restaurant',
                          arguments: restaurant,
                        );
                      },
                    ),
                  ),
                  // Add more cards as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
