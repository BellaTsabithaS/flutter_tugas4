import 'package:flutter/material.dart';
import 'home_page.dart';
import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String productName = 'Product 1';
  static const int productPrice = 2000000;
  static const String productImageUrl = 'https://picsum.photos/id/0/367/267';
  static const String productDescription =
      'Laptop premium dengan performa tinggi untuk pekerjaan dan hiburan.';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pertemuan 5',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(
          name: productName,
          price: productPrice,
          imageUrl: productImageUrl,
        ),
        '/second': (context) => const SecondPage(
          name: productName,
          price: productPrice,
          imageUrl: productImageUrl,
          description: productDescription,
        ),
      },
    );
  }
}
