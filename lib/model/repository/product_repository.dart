import 'package:shout_supermarket/model/dao.dart';
import 'package:shout_supermarket/model/product.dart';

class ProductRepository{
  static final  _table= "products";
  static Future<int> insertProduct(Product product) async{
    final db = await DAO.getConnection();
    return await db.insert(_table, product.toMap());
  } 
  static Future<List<Product>> findAll() async{
    final db = await DAO.getConnection();
    final elements = await db.query(_table);
    return elements.map(
      (element) => Product.fromMap(element)
    ).toList();
  } 
}