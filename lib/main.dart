import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/controller/controller.dart';
import 'package:test/views/homeView.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BurgerController(),)
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home:  HomeScreen(),
      ),
    );
  }
}
