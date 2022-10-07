class Product {
  String name;
  String value;
  String quantity;

  Product({
    required this.name,
    required this.value,
    required this.quantity,
  });

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "value": value,
      "quantity": quantity,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'],
      value: map['value'],
      quantity: map['quantity'],
    );
  }
}
