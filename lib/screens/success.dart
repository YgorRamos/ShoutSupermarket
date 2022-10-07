import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Produto salvo com sucesso!!!",
          style: TextStyle(
            fontSize: 35,
            color: Colors.green,
          ),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
                fixedSize: Size(150, 20),
                backgroundColor: Colors.red,
                elevation: 15,
                shadowColor: Colors.green),
            child: Text(
              'Voltar',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
          ),
        ],
      ),
    );
  }
}
