// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    this.sku,
    this.title,
    this.description,
    this.stock,
    this.minStockAlert,
    this.imageUrl,
    this.videoUrl,
    this.brand,
    this.weight,
    this.dimension,
    this.rate,
    this.discount,
    this.parentCategory,
    this.childCategory,
    this.grandchildCategory,
    this.productSpec,
    this.tags,
  });

  String sku;
  String title;
  String description;
  int stock;
  int minStockAlert;
  String imageUrl;
  String videoUrl;
  String brand;
  int weight;
  Dimension dimension;
  int rate;
  int discount;
  int parentCategory;
  int childCategory;
  int grandchildCategory;
  List<ProductSpec> productSpec;
  List<String> tags;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        sku: json["sku"],
        title: json["title"],
        description: json["description"],
        stock: json["stock"],
        minStockAlert: json["minStockAlert"],
        imageUrl: json["imageURL"],
        videoUrl: json["videoURL"],
        brand: json["brand"],
        weight: json["weight"],
        dimension: Dimension.fromJson(json["dimension"]),
        rate: json["rate"],
        discount: json["discount"],
        parentCategory: json["parentCategory"],
        childCategory: json["childCategory"],
        grandchildCategory: json["grandchildCategory"],
        productSpec: List<ProductSpec>.from(json["productSpec"].map((x) => ProductSpec.fromJson(x))),
        tags: List<String>.from(json["tags"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "sku": sku,
        "title": title,
        "description": description,
        "stock": stock,
        "minStockAlert": minStockAlert,
        "imageURL": imageUrl,
        "videoURL": videoUrl,
        "brand": brand,
        "weight": weight,
        "dimension": dimension.toJson(),
        "rate": rate,
        "discount": discount,
        "parentCategory": parentCategory,
        "childCategory": childCategory,
        "grandchildCategory": grandchildCategory,
        "productSpec": List<dynamic>.from(productSpec.map((x) => x.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x)),
      };
}

class Dimension {
  Dimension({
    this.length,
    this.width,
    this.height,
  });

  double length;
  double width;
  double height;

  factory Dimension.fromJson(Map<String, dynamic> json) => Dimension(
        length: json["length"].toDouble(),
        width: json["width"].toDouble(),
        height: json["height"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "length": length,
        "width": width,
        "height": height,
      };
}

class ProductSpec {
  ProductSpec({
    this.name,
    this.unit,
    this.value,
    this.type,
  });

  String name;
  String unit;
  String value;
  String type;

  factory ProductSpec.fromJson(Map<String, dynamic> json) => ProductSpec(
        name: json["name"],
        unit: json["unit"],
        value: json["value"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "unit": unit,
        "value": value,
        "type": type,
      };
}
