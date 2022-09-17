import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycile_bin_app/datas.dart';
import 'package:recycile_bin_app/variables.dart';

class OrderHistory extends StatefulWidget {
  OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  List<String> tileStatus = ["Pending", "Success", "Canceled"];
  double h = 0;
  double w = 0;
  List<Image> image = [];
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height / 1920;
    w = MediaQuery.of(context).size.width / 1080; // remove these lines
    controller.orders.add(Order(10000, DateTime(2022, 1, 1), 0));
    List<Widget> tabs = [
      Text(
        "Pending",
        style: GoogleFonts.poppins(fontSize: 38 * h, color: Colors.black),
      ),
      Text(
        "Success",
        style: GoogleFonts.poppins(fontSize: 38 * h, color: Colors.black),
      ),
      Text(
        "Canceled",
        style: GoogleFonts.poppins(fontSize: 38 * h, color: Colors.black),
      ),
    ];
    image = [
      Image.asset(
        "assets/pending.png",
        width: 166 * w,
        height: 166 * h,
      ),
      Image.asset(
        "assets/success.png",
        width: 166 * w,
        height: 166 * h,
      ),
      Image.asset(
        "assets/canceled.png",
        width: 166 * w,
        height: 166 * h,
      )
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(265 * h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 65 * h),
                  child: Text(
                    "Your Order History",
                    style: GoogleFonts.poppins(fontSize: 64 * h),
                  ),
                ),
                TabBar(
                  tabs: tabs,
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 1,
                  indicatorPadding:
                      EdgeInsets.only(left: 58 * w, right: 58 * w),
                ),
              ],
            ),
          ),
          title: Text(
            "App Name",
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 48 * h),
          ),
        ),
        body: TabBarView(children: children()),
      ),
    );
  }

  List<Widget> children() {
    return [
      listToShow(0),
      listToShow(1),
      listToShow(2),
    ];
  }

  Widget listToShow(int tile) {
    return Padding(
      padding: EdgeInsets.only(left: 86 * w, right: 86 * w, top: 72 * h),
      child: ListView(
        children: [
          for (var index in controller.orders)
            if (index.status == tile)
              Card(
                color: (tile == 0)
                    ? Colors.amber[100]
                    : (tile == 1)
                        ? Color(0xffA9FFC1)
                        : Color(0xffFFA9A9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(39 * w))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order id : ${index.orderId}",
                            style: GoogleFonts.poppins(
                              fontSize: 64 * h,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${index.date.day}/${index.date.month}/${index.date.year} ",
                                    style: GoogleFonts.poppins(
                                      fontSize: 48 * h,
                                    ),
                                  ),
                                  Text(
                                    tileStatus[tile],
                                    style: GoogleFonts.poppins(
                                      fontSize: 64 * h,
                                      color: (tile == 0)
                                          ? Color(0xff977005)
                                          : (tile == 1)
                                              ? Color(0xff00A82F)
                                              : Color(0xffC70000),
                                    ),
                                  ),
                                ],
                              ),
                              image[tile],
                            ],
                          ),
                        ],
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "View Bill",
                          style: GoogleFonts.poppins(),
                        ),
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 270 * h),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                            shape: StadiumBorder()),
                      ),
                    ],
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
