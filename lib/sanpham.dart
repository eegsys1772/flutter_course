import 'dart:convert';

import 'package:http/http.dart' as http;

class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final double rate;
  final int count;

  Product(this.id, this.title, this.price, this.description, this.category, this.image, this.rate, this.count);



  static Future<List<Product>> fetchData() async {
    String url = "https://fakestoreapi.com/products?limit=100";
    var client = http.Client();
    //lấy dữ liệu về
    var response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var result = response.body;
      var jsonData = jsonDecode(result);
      List<Product> ls = [];
      for(var product in jsonData)
      {
        var id = product["id"];
        var title = product["title"];
        var price = product["price"];
        var description = product["description"];
        var category = product["category"];
        var image = product["image"];
        var rate = product['rating']['rate'];
        var count = product['rating']['count'];

        Product p = new Product(id, title, price, description, category, image, rate, count);
        ls.add(p);
      }
      return ls;
    }
    else
    {
      throw Exception("Lỗi lấy dữ liệu: ${response.statusCode}");
    }
  }
}