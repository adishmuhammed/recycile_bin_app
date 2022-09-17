import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recycile_bin_app/controller.dart';

final Controller controller = Get.put(Controller());

List<TextEditingController> numberOfItemsController = [];
void initializeControllers(List<int> value) {
  for (var element in value) {
    numberOfItemsController
        .add(TextEditingController(text: element.toString()));
  }
}
