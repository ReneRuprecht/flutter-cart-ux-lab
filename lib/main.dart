import 'package:cart_ux_lab/cart/enhanced/CartScreenEnhanced.dart';
import 'package:cart_ux_lab/cart/original/CartScreenOriginal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int currentIndex = 0;
  final pages = [MyHomePage(), CartScreenOriginal(), CartScreenEnhanced()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: IndexedStack(index: currentIndex, children: pages),
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart),
              label: "Original",
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart),
              label: "Enhanced",
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            "home",
            style: TextStyle(color: Colors.white, fontSize: 60),
          ),
        ),
      ),
    );
  }
}
