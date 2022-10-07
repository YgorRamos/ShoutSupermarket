import 'package:flutter/material.dart';

class ListOfProducts extends StatelessWidget {
  const ListOfProducts({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.green,
              title: Text(
                "Produtos Cadastrados",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
