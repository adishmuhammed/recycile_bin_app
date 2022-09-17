import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycile_bin_app/bill_page.dart';
import 'package:recycile_bin_app/controller.dart';
import 'package:recycile_bin_app/variables.dart';

class BasketPage extends StatelessWidget {
  BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("In basket");
    final w = MediaQuery.of(context).size.width / 1080;
    final h = MediaQuery.of(context).size.height / 1920;
    return GetBuilder<Controller>(
      builder: (a) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "App Name",
            style: GoogleFonts.poppins(
              fontSize: 48 * h,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          padding: EdgeInsets.only(left: 86 * w, right: 86 * w, top: 130 * h),
          itemCount: controller.itemInBasket.length,
          itemBuilder: (context, index) {
            return Column(
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(33 * w))),
                tileColor: Colors.grey[300],
                title: Text(
                  controller.itemInBasket[index].name,
                  style: GoogleFonts.poppins(
                    fontSize: 64 * h,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Kg : ",
                              style: GoogleFonts.poppins(fontSize: 48 * h),
                            ),
                            SizedBox(
                              width: 104 * w,
                              height: 114 * h,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: numberOfItemsController[index],
                                onChanged: (value) {
                                  controller.itemQuantity[index] =
                                      int.parse(value);
                                },
                              ),
                            ),
                            Text(
                              "  x ${controller.itemInBasket[index].price}/-",
                              style: GoogleFonts.poppins(fontSize: 48 * h),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Rs. ",
                              style: GoogleFonts.poppins(fontSize: 48 * h),
                            ),
                            Text(
                              "${((numberOfItemsController[index].text.isEmpty) ? 0 : int.parse(numberOfItemsController[index].text)) * controller.itemInBasket[index].price}",
                              style: GoogleFonts.poppins(fontSize: 48 * h),
                            ),
                          ],
                        ),
                      ],
                    ),
                    OutlinedButton(
                      onPressed: () {
                        controller.remove(index);
                        controller.update();
                      },
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(33 * w))),
                          fixedSize: Size(862 * w, 95 * h)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.solidTrashCan,
                            color: Colors.white,
                            size: 35 * w,
                          ),
                          Text(
                            " Remove",
                            style: GoogleFonts.poppins(
                              fontSize: 36 * h,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 37 * h,
              )
            ],
          );
          },
        ),
        persistentFooterButtons: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0 * h),
                child: Container(
                  width: 1080 * w,
                  height: 200 * h,
                  color: Colors.white,
                ),
              ),
              Center(
                child: Container(
                  width: 900 * w,
                  height: 142 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(71 * w),
                    ),
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "   Total : ${controller.price()}",
                        style: GoogleFonts.poppins(fontSize: 50 * h),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          fixedSize: Size(361 * w, 142 * h),
                        ),
                        onPressed: () {
                          Get.to(BillPage());
                        },
                        child: Text(
                          "Next",
                          style: GoogleFonts.poppins(fontSize: 36 * h),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
