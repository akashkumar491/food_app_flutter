import 'package:flutter/material.dart';
import '../widgets/responsive_layout.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MobileHomeScreen(),
      tablet: TabletHomeScreen(),
      desktop: DesktopHomeScreen(),
    );
  }
}
