import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycile_bin_app/edit_profile.dart';
import 'package:recycile_bin_app/home_Screen.dart';
import 'package:recycile_bin_app/home_page.dart';
import 'package:recycile_bin_app/order_history.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);
  double h = Get.height / 2065;
  double w = Get.width / 1080;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.to(HomeScreen()),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text(
          "App name",
          style: GoogleFonts.poppins(fontSize: 48 * h),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 403 * h,
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Image.asset(
                      "assets/Group 98.png",
                      width: 956 * w,
                    ),
                    Container(
                      width: 455 * w,
                      padding: EdgeInsets.only(right: 105 * w, top: 40 * h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(),
                          Text(
                            "Hi, User",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 48 * h),
                          ),
                          Text(
                            "Abcd Location, Efgh City, ijkl Street.\n893223493",
                            style: GoogleFonts.poppins(fontSize: 20 * h),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  Get.to(EditProfile());
                },
                icon: FaIcon(
                  FontAwesomeIcons.penToSquare,
                  size: 32 * w,
                ),
                label: Text(
                  "Edit Profile",
                  style: GoogleFonts.poppins(fontSize: 30 * h),
                ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.black,
                  primary: Colors.white,
                  fixedSize: Size(956 * w, 88 * h),
                ),
              ),
              Divider(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 62 * w,
                  vertical: 17 * h,
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    fixedSize: Size.fromHeight(133 * h),
                    backgroundColor: Color(0xffDCFFD7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39 * w),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 65 * w,
                            height: 65 * h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: Align(
                              alignment: Alignment.center,
                              child: FaIcon(
                                FontAwesomeIcons.indianRupeeSign,
                                size: 50 * w,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 27 * w,
                          ),
                          Text(
                            "Your Wallet",
                            style: GoogleFonts.poppins(
                              fontSize: 40 * h,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "data",
                        style: GoogleFonts.poppins(
                          fontSize: 48 * h,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 62 * w,
                  vertical: 17 * h,
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    fixedSize: Size.fromHeight(133 * h),
                    backgroundColor: Color(0xffDCFFD7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39 * w),
                    ),
                  ),
                  onPressed: () {
                    Get.to(OrderHistory());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 65 * w,
                            height: 65 * h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: ClipOval(
                              child: Align(
                                alignment: Alignment.center,
                                child: FaIcon(
                                  Icons.access_time_sharp,
                                  size: 65 * w,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 27 * w,
                          ),
                          Text(
                            "Order History",
                            style: GoogleFonts.poppins(
                              fontSize: 40 * h,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        ">",
                        style: GoogleFonts.poppins(
                          fontSize: 48 * h,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 62 * w,
                  vertical: 17 * h,
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    fixedSize: Size.fromHeight(133 * h),
                    backgroundColor: Color(0xffDCFFD7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39 * w),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 65 * w,
                            height: 65 * h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: Align(
                              alignment: Alignment.center,
                              child: FaIcon(
                                FontAwesomeIcons.info,
                                size: 38 * w,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 27 * w,
                          ),
                          Text(
                            "About Us",
                            style: GoogleFonts.poppins(
                              fontSize: 40 * h,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        ">",
                        style: GoogleFonts.poppins(
                          fontSize: 48 * h,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 62 * w,
                  vertical: 17 * h,
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    fixedSize: Size.fromHeight(133 * h),
                    backgroundColor: Color(0xffDCFFD7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39 * w),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 65 * w,
                            height: 65 * h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: Align(
                              alignment: Alignment.center,
                              child: FaIcon(
                                FontAwesomeIcons.phone,
                                size: 35 * w,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 27 * w,
                          ),
                          Text(
                            "Contact Us",
                            style: GoogleFonts.poppins(
                              fontSize: 40 * h,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        ">",
                        style: GoogleFonts.poppins(
                          fontSize: 48 * h,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 192 * h),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.red,
                  fixedSize: Size(891 * w, 105 * h)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Logout ',
                    style: GoogleFonts.poppins(
                      fontSize: 40 * h,
                      color: Colors.white,
                    ),
                  ),
                  FaIcon(FontAwesomeIcons.arrowRight),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
