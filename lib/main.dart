import 'package:flutter/material.dart';
import 'package:shout_supermarket/screens/add_product.dart';
import 'package:shout_supermarket/screens/home.dart';
import 'package:shout_supermarket/screens/list_of_products.dart';
import 'package:shout_supermarket/screens/success.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Shout Supermarket",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.red,
          secondary: Colors.green,
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/add_product": (context) => AddProduct(),
        "/list_of_products":(context) => ListOfProducts(),
        "/success":(context) => Success(),
      },
    ),
  );
}
