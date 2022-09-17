import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recycile_bin_app/datas.dart';
import 'package:get_storage/get_storage.dart';

class Controller extends GetxController {
  List<Items> selectedItems = [];
  bool itemSelected = false;
  List<Items> itemInBasket = [];
  List<int> itemQuantity = [];
  List<Order> orders = [];

  void select(k) {
    if (itemSelected == false) {
      print("hai");
      itemSelected = true;
      selectedItems.add(k);
    } else {
      print("hai1");
      itemSelected = false;
      selectedItems.remove(k);
    }
    update();
  }

  void deselect() {
    selectedItems.clear();
    itemSelected = false;
    update();
  }

  void store() async {
    await GetStorage.init();
    final box = GetStorage();
    box.write('cartItems', selectedItems);
  }

  dynamic read() async {
    await GetStorage.init();
    final box = GetStorage();
    return box.read('cartItems');
  }

  void remove(index) {
    itemInBasket.removeAt(index);
  }

  int getBasketList() {
    return itemInBasket.length;
  }

  double price() {
    double totalPrice = 0;
    for (var e = 0; e > itemInBasket.length; e++) {
      totalPrice += (itemInBasket[e].price * itemQuantity[e]);
    }
    return totalPrice;
  }
}
