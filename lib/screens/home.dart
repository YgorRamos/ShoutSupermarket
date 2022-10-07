import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/ShoutSupermarket_logo.jpeg",
              width: 300,
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                  fixedSize: Size(150, 20),
                  backgroundColor: Colors.red,
                  elevation: 50,
                  shadowColor: Colors.green.shade600),
              child: Text(
                'Cadastrar Produto',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/add_product");
              },
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                  fixedSize: Size(150, 20),
                  backgroundColor: Colors.red,
                  elevation: 15,
                  shadowColor: Colors.green),
              child: Text(
                'Listar Produto',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/list_of_products");
              },
            ),
          ],
        ),
      ),
    );
  }
}
