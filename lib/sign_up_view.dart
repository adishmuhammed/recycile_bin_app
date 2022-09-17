import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geocode/geocode.dart';
import 'package:location/location.dart';
import 'package:recycile_bin_app/sign_in_view.dart';
import 'package:recycile_bin_app/sign_up_controller.dart';
import 'package:animate_do/animate_do.dart';
import 'package:recycile_bin_app/sign_up_done.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> with TickerProviderStateMixin {
  late AnimationController firstAnimation;
  late AnimationController secondAnimation;

  @override
  void initState() {
    super.initState();
    firstAnimation = AnimationController(vsync: this);
    secondAnimation = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    firstAnimation.dispose();
    secondAnimation.dispose();
  }

  SignUpController c = SignUpController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 1920;
    double w = MediaQuery.of(context).size.width / 1080;
    TextStyle heading = GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 70 * h,
      fontWeight: FontWeight.w500,
    );
    TextStyle texts = GoogleFonts.poppins(
      color: Color(0xa5000000),
      fontSize: 32 * h,
      fontWeight: FontWeight.w400,
    );
    field({
      required String text,
      required TextEditingController controller,
      bool isPassword = false,
      bool isHalf = false,
    }) {
      var width = (429 * w * 2);
      if (isHalf) {
        width = (426 * w);
      }
      return Padding(
        padding: EdgeInsets.only(
          bottom: 31 * h,
        ),
        child: SizedBox(
          width: width,
          height: 136 * h,
          child: TextField(
            controller: controller,
            obscureText: isPassword,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30 * w),
              ),
              hintText: text,
              hintStyle: GoogleFonts.poppins(
                fontSize: 32 * h,
              ),
            ),
          ),
        ),
      );
    }

    Widget textFieldFirst = SizedBox(
      width: 881 * w,
      height: 804 * h,
      child: ListView(
        controller: ScrollController(initialScrollOffset: 12 * h),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              field(text: "First Name", controller: c.firstName, isHalf: true),
              const SizedBox(
                width: 23 - 14,
              ),
              field(text: "Last Name", controller: c.lastName, isHalf: true),
            ],
          ),
          field(text: "Email Address", controller: c.emailAddress),
          field(text: "Phone Number", controller: c.phoneNumber),
          field(text: "Password", controller: c.password, isPassword: true),
          field(
              text: "Confirm Password",
              controller: c.conformPassword,
              isPassword: true)
        ],
      ),
    );

    Widget textFieldSecond = SizedBox(
      width: 881 * w,
      height: 804 * h,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 31 * h),
            child: SizedBox(
              width: 800 * w,
              height: 136 * h,
              child: TextField(
                controller: c.address,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.place),
                    onPressed: () async {
                      Location location = new Location();

                      bool _serviceEnabled;
                      PermissionStatus _permissionGranted;
                      LocationData _locationData;

                      _serviceEnabled = await location.serviceEnabled();
                      if (!_serviceEnabled) {
                        _serviceEnabled = await location.requestService();
                        if (!_serviceEnabled) {
                          return;
                        }
                      }

                      _permissionGranted = await location.hasPermission();
                      if (_permissionGranted == PermissionStatus.denied) {
                        _permissionGranted = await location.requestPermission();
                        if (_permissionGranted != PermissionStatus.granted) {
                          return;
                        }
                      }
                      if (_permissionGranted == PermissionStatus.granted ||
                          _permissionGranted ==
                              PermissionStatus.grantedLimited) {
                        _locationData = await location.getLocation();

                        GeoCode geoCode = GeoCode();
                        Address address = await geoCode.reverseGeocoding(
                            latitude: _locationData.latitude!,
                            longitude: _locationData.longitude!);

                        c.address.text = address.streetAddress!;
                        c.city.text = address.city!;
                        c.place.text = address.region!;
                        c.city.text = address.city!;
                      }
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30 * w),
                  ),
                  hintText: "Set Your Local Address Location",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 32 * h,
                  ),
                ),
              ),
            ),
          ),
          field(text: "Place", controller: c.place),
          field(text: "Street", controller: c.street),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              field(text: "City", controller: c.city, isHalf: true),
              const SizedBox(
                width: 23 - 14,
              ),
              field(text: "Pincode", controller: c.pincode, isHalf: true)
            ],
          ),
        ],
      ),
    );
    var buttonText = "Next".obs;
    ScrollController scrollController = ScrollController();
    bool nextButtonPressed = false;
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(99 * w, 205 * h, 100 * w, 61 * h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 28 * w),
              child: Text(
                "Let’s sign you in.",
                style: heading,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 28 * w),
              child: Text(
                '''Lorem ipsum dolor sit amet, consectetur 
adipiscing elit, sed do dolore eiusmod tempor''',
                style: texts,
              ),
            ),
            SizedBox(height: 10 * h),
            SizedBox(
              height: 881 * h,
              child: ListView(
                controller: scrollController,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  textFieldFirst,
                  textFieldSecond,
                ],
              ),
            ),
            SizedBox(
              height: 80 * h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Already have an account? ",
                  style: texts,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(SignInView());
                  },
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.poppins(
                        fontSize: 32 * h, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      if (nextButtonPressed) {
                        Get.to(SignUpDone());
                      } else {
                        nextButtonPressed = true;
                        scrollController.animateTo(881,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeOut);
                        buttonText.value = "Sign Up";
                      }
                    },
                    style: TextButton.styleFrom(
                      fixedSize: Size(881 * w, 136 * h),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33 * w),
                      ),
                    ),
                    child: Obx(
                      () => Text(
                        "$buttonText",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 32 * h,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Getting Troubles? ",
                  style: GoogleFonts.poppins(
                    fontSize: 32 * h,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Condact Us",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 32 * h),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
