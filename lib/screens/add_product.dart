import 'package:flutter/material.dart';
import 'package:shout_supermarket/model/product.dart';
import 'package:shout_supermarket/model/repository/product_repository.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final valueController = TextEditingController();
  final quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cadastrar Produto",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 30),
            TextFormField(
              controller: nameController,
              validator: (text) => (text == null || text.length < 1)
                  ? "O nome do produto é inválido"
                  : null,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                label: Text("Nome:"),
                icon: Icon(Icons.drive_file_rename_outline),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              validator: (text) => (text == null || text.length < 0)
                  ? "O valor do produto é inválido"
                  : null,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text("Valor:"),
                icon: Icon(Icons.paid),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              validator: (text) => (text == null || text.length < 0)
                  ? "A quantidade de produtos é inválida"
                  : null,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text("Quantidade em estoque:"),
                icon: Icon(Icons.production_quantity_limits),
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  final product = Product(
                    name: nameController.text,
                    value: valueController.text,
                    quantity: quantityController.text,
                  );
                  final result = await ProductRepository.insertProduct(product);

                  if (result != 0) {
                    Navigator.pushNamed(context, "/success");
                  } else {
                    String message = "Erro ao salvar o produto";
                    final snack = SnackBar(content: Text(message));
                    ScaffoldMessenger.of(context).showSnackBar(snack);
                  }
                }
              },
              child: Text("CADASTRAR"),
            ),
          ],
        ),
      ),
    );
  }
}
