import 'dart:convert';
import 'package:http/http.dart';

import '../Models/Products.dart';
import 'package:http/http.dart' as http;
import 'HostConfig.dart';

Future<void> main() async {
  var product = new Product();
  product = await getProduct('6050aa6804bff127e82cba16');
  addProduct(product);
}

Future<Product> getProduct(productID) async {
  var response = await http.get(Uri.http(host, 'api/product/' + productID));
  var jsonString = json.decode(response.body);
  var product = new Product.fromJson(jsonString);
  print(product);
  return product;
}

Future<Product> delProduct(productID) async {
  var response = await http.delete(Uri.http(host, 'api/product/' + productID));
  var jsonString = json.decode(response.body);
  var product = new Product.fromJson(jsonString);
  return product;
}

Future<Response> addProduct(Product product) async {
  // var endPoint = 'https://' + host + '/api/product/';
  var url = new Uri(host: 'localhost', port: 3000, path: '/api/product');
  var response = await http.post(
    url,
    body: product.toJson(),
    headers: {"Content-Type": "application/json"},
  );
  return response;
}
