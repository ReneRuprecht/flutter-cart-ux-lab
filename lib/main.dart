import 'package:cart_ux_lab/cart/application/CartViewModel.dart';
import 'package:cart_ux_lab/cart/data/repositories/CartRepositoryImpl.dart';
import 'package:cart_ux_lab/cart/domain/usecases/AddToCartUseCase.dart';
import 'package:cart_ux_lab/cart/domain/usecases/CartChangesUseCase.dart';
import 'package:cart_ux_lab/cart/domain/usecases/DeleteItemByIdUseCase.dart';
import 'package:cart_ux_lab/cart/domain/usecases/LoadCartItemsUseCase.dart';
import 'package:cart_ux_lab/cart/presentation/enhanced/CartScreenEnhanced.dart';
import 'package:cart_ux_lab/cart/presentation/original/CartScreenOriginal.dart';
import 'package:cart_ux_lab/recommendation/application/RecommendationViewModel.dart';
import 'package:cart_ux_lab/recommendation/data/repositories/RecommendationRepositoryImpl.dart';
import 'package:cart_ux_lab/recommendation/domain/usecases/LoadRecommendationsUseCase.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  final cartRepository = CartRepositoryImpl();
  final addToCartUseCase = AddToCartUseCase(repository: cartRepository);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => CartViewModel(
            loadItemsUseCase: LoadItemsUseCase(repository: cartRepository),
            cartChangesUseCase: CartChangesUseCase(cartRepository),
            deleteItemByIdUseCase: DeleteItemByIdUseCase(cartRepository),
          )..load(),
        ),

        ChangeNotifierProvider(
          create: (ctx) => RecommendationViewModel(
            loadRecommendationsUseCase: LoadRecommendationsUseCase(
              repository: RecommendationRespsitoryImpl(),
            ),
            addToCart: addToCartUseCase,
          )..load(),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
