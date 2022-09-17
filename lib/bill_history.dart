import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:recycile_bin_app/variables.dart';

class BillPage extends StatelessWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Name",
          style: GoogleFonts.poppins(fontSize: 48 * Get.height),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 174 * Get.height,
              ),
              Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(56 * Get.width),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Bill Now",
                            style:
                                GoogleFonts.poppins(fontSize: 64 * Get.height),
                          ),
                          Text("${today.day}-${today.month}-${today.year}",
                              style: GoogleFonts.poppins(
                                  fontSize: 32 * Get.height))
                        ],
                      ),
                      const Divider(),
                      Table(
                        children: [
                          TableRow(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                width: 1.5,
                                color: Colors.grey,
                              ))),
                              children: [
                                Text(
                                  "No",
                                  style: GoogleFonts.poppins(
                                      fontSize: 32 * Get.height),
                                ),
                                Text(
                                  "items",
                                  style: GoogleFonts.poppins(
                                      fontSize: 32 * Get.height),
                                ),
                                Text(
                                  "Qty",
                                  style: GoogleFonts.poppins(
                                      fontSize: 32 * Get.height),
                                ),
                                Text(
                                  "Price",
                                  style: GoogleFonts.poppins(
                                      fontSize: 32 * Get.height),
                                ),
                              ]),
                          for (var i = 0;
                              i <= controller.itemInBasket.length;
                              i++)
                            TableRow(children: [
                              Text(
                                "$i",
                                style: GoogleFonts.poppins(
                                    fontSize: 32 * Get.height),
                              ),
                              Text(
                                controller.itemInBasket[i].name,
                                style: GoogleFonts.poppins(
                                    fontSize: 32 * Get.height),
                              ),
                              Text(
                                controller.itemQuantity[i].toString(),
                                style: GoogleFonts.poppins(
                                    fontSize: 32 * Get.height),
                              ),
                              Text(
                                controller.itemInBasket[i].price.toString(),
                                style: GoogleFonts.poppins(
                                    fontSize: 32 * Get.height),
                              ),
                            ])
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style:
                                GoogleFonts.poppins(fontSize: 32 * Get.height),
                          ),
                          Text(controller.price().toString(),
                              style: GoogleFonts.poppins(
                                  fontSize: 32 * Get.height))
                        ],
                      ),
                      Wrap(
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            label: Text(
                              "Edit Bucket",
                              style: GoogleFonts.poppins(
                                  fontSize: 24 * Get.height),
                            ),
                            icon: const FaIcon(FontAwesomeIcons.penToSquare),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                            color: Colors.black)))),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            label: Text(
                              "Edit Bucket",
                              style: GoogleFonts.poppins(
                                  fontSize: 24 * Get.height),
                            ),
                            icon: const FaIcon(FontAwesomeIcons.print),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                            color: Colors.blue  )))),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            label: Text(
                              "Edit Bucket",
                              style: GoogleFonts.poppins(
                                  fontSize: 24 * Get.height),
                            ),
                            icon: const FaIcon(FontAwesomeIcons.share),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                            color: Colors.yellow)))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                primary: Colors.green,
                fixedSize: Size(891 * Get.width, 105 * Get.height)),
            child: Text(
              'Move to bin',
              style: GoogleFonts.poppins(fontSize: 32 * Get.height),
            ),
          )
        ],
      ),
    );
  }
}
