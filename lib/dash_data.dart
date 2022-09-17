import 'dart:ffi';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';
import 'package:profanity_filter/profanity_filter.dart';
import 'package:get/get.dart';
import 'package:recycile_bin_app/datas.dart';
import 'package:recycile_bin_app/variables.dart';

class AllData {
  int id = 0;
  bool garbage = false;

  AllData(this.id);

  void garbaged() {
    if (id == 0) {
      garbage = true;
    }
  }
}

class Users extends AllData {
  String name;
  String address;
  String phone;
  String email;

  Users(this.name, this.address, this.phone, this.email, int id) : super(id) {
    if (!name.isAlphabetOnly) {
      super.id = 0;
    }
    if (!ProfanityFilter().hasProfanity(address)) {
      super.id = 0;
    }
    if (!phone.isPhoneNumber) {
      super.id = 0;
    }
    if (!email.isEmail) {
      super.id = 0;
    }
    super.garbaged();
  }
}

class Product extends AllData implements Data {
  @override
  List<ElevatedButton> buttons;

  @override
  BuildContext context;

  @override
  List<ItemCategory> items;

  @override
  List<Image> slideShowImages;

  Product(this.items, this.context, this.slideShowImages, this.buttons, id)
      : super(id);
}

class Orders extends AllData implements Order {
  @override
  DateTime date;

  @override
  int orderId;

  @override
  int status;

  Orders(this.date, this.orderId, this.status, int id) : super(id);
}

class IdProvider {
  int _userId = -1;
  int _productId = -1;
  int _orderId = -1;
  IdProvider();
  user() {
    _userId++;
  }
  product() {
    _productId++;
  }
  order() {
    if (_orderId == -1) {
      _orderId += 10000;
    }
    _orderId++;
  }
}

class DashData {
  List<Users> users = [];
  List<Product> products = [];
  List<Orders> orders = [];

  IdProvider ids = IdProvider();
  DashData() {
    users.addAll([
      Users(
        "Some One",
        "some Where",
        "1234567890",
        "exep@exp.com",
        ids.
      )
    ]);
  }
}

Data data = Data([
  ItemCategory("Headng", [
    Items(
        "name",
        "description",
        12,
        Image.asset(
          "assets/undraw_documents_re_isxv 1.png",
        ))
  ])
], context, Data.imageFill(context).slideShowImages,
    Data.buttonUse(context).buttons);
