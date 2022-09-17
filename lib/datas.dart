import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycile_bin_app/home_page.dart';

class Items {
  final String name;
  final String description;
  final double price;
  final Image image;
  Items(this.name, this.description, this.price, this.image) {}
}

class ItemCategory {
  String categoryName = "";
  List<Items> category = [];
  ItemCategory(this.categoryName, this.category);
}

class Order {
  int orderId;
  DateTime date;
  int status;
  Order(this.orderId, this.date, this.status);
}

class Data {
  BuildContext context;
  List<ItemCategory> items = [];
  List<Image> slideShowImages = [];
  List<ElevatedButton> buttons = [];

  Data(this.items, this.context, this.slideShowImages, this.buttons);
  Data.imageFill(this.context) {
    slideShowImages = [
      Image.asset(
        "assets/Screenshot 2022-08-18 194102.png",
        width: (956 * Get.textScaleFactor) / 3.5,
        height: (403 * Get.textScaleFactor) / 2,
      ),
      Image.asset(
        "assets/Screenshot 2022-08-18 194102.png",
        width: (956 * Get.textScaleFactor) / 3.5,
        height: (403 * Get.textScaleFactor) / 2,
      ),
      Image.asset(
        "assets/Screenshot 2022-08-18 194102.png",
        width: (956 * Get.textScaleFactor) / 3.5,
        height: (403 * Get.textScaleFactor) / 2,
      ),
    ];
  }
  Data.buttonUse(this.context) {
    buttons = [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white, shape: StadiumBorder()),
        onPressed: () {},
        child: Text(
          "Menu",
          style: GoogleFonts.poppins(
              fontSize: 30 * (MediaQuery.of(context).size.height / 1920),
              color: Colors.black),
        ),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white, shape: StadiumBorder()),
        onPressed: () {},
        child: Text(
          "Menu",
          style: GoogleFonts.poppins(
              fontSize: 30 * (MediaQuery.of(context).size.height / 1920),
              color: Colors.black),
        ),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white, shape: StadiumBorder()),
        onPressed: () {},
        child: Text(
          "Menu",
          style: GoogleFonts.poppins(
              fontSize: 30 * (MediaQuery.of(context).size.height / 1920),
              color: Colors.black),
        ),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white, shape: StadiumBorder()),
        onPressed: () {},
        child: Text(
          "Menu",
          style: GoogleFonts.poppins(
              fontSize: 30 * (MediaQuery.of(context).size.height / 1920),
              color: Colors.black),
        ),
      ),
    ];
  }
}
