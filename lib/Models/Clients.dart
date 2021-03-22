// To parse this JSON data, do
//
//     final client = clientFromJson(jsonString);

import 'dart:convert';

import 'dart:io';

Client clientFromJson(String str) => Client.fromJson(json.decode(str));

class Client {
  Client({
    this.name,
    this.phoneNumber,
    this.email,
    this.password,
    this.storeName,
    this.corporateAddress,
    this.walletAmount,
    this.createdDate,
    this.proofType,
    this.Proof,
    this.totalOrder,
    this.totalSales,
    this.isApproved,
    this.isAdmin,
  });

  String name;
  String phoneNumber;
  String email;
  String password;
  String storeName;
  String corporateAddress;
  int walletAmount;
  DateTime createdDate;
  String proofType;
  File Proof;
  int totalOrder;
  int totalSales;
  bool isApproved;
  bool isAdmin;

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        name: json["name"],
        phoneNumber: json["phoneNumber"],
        email: json["email"],
        password: json["password"],
        storeName: json["storeName"],
        corporateAddress: json["corporateAddress"],
        walletAmount: json["walletAmount"],
        createdDate: json["createdDate"],
        proofType: json["proofType"],
        totalOrder: json["totalOrder"],
        totalSales: json["totalSales"],
        isApproved: json["isApproved"],
        isAdmin: json["isAdmin"],
      );
}
