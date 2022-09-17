import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycile_bin_app/variables.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  List<TextEditingController> textController = [];
  bool _dissabled = false;
  List<String> names = [
    'First Name',
    'Last Name',
    'Email',
    'Phone ',
    'Location'
  ];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 5; i++) {
      textController
          .add(TextEditingController(text: "$i")); // replace with actual data
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "App Name",
          style: GoogleFonts.poppins(
            fontSize: 48 * (Get.height / 2065),
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 134 * (Get.width / 1080), top: 98 * (Get.height / 2065)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Edit your Profile',
                style: GoogleFonts.poppins(
                    fontSize: 40 * (Get.height / 2065),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 68 * (Get.height / 2065)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(),
                  FaIcon(
                    FontAwesomeIcons.penToSquare,
                    size: 36 * (Get.height / 2065),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(134 * (Get.width / 1080)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 45 * (Get.height / 2065),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'First Name',
                        style: GoogleFonts.poppins(
                          fontSize: 36 * (Get.height / 2065),
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 500 * (Get.width / 1080),
                        child: TextField(
                          textAlign: TextAlign.end,
                          controller: textController[0],
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(top: 100.0 * (Get.height / 2060)),
                child: SizedBox(
                  height: 45 * (Get.height / 2065),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Last Name',
                          style: GoogleFonts.poppins(
                            fontSize: 36 * (Get.height / 2065),
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 500 * (Get.width / 1080),
                          child: TextField(
                            textAlign: TextAlign.end,
                            controller: textController[1],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(top: 100.0 * (Get.height / 2060)),
                child: SizedBox(
                  height: 45 * (Get.height / 2065),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Email',
                          style: GoogleFonts.poppins(
                            fontSize: 36 * (Get.height / 2065),
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 500 * (Get.width / 1080),
                          child: TextField(
                            textAlign: TextAlign.end,
                            controller: textController[2],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(top: 100.0 * (Get.height / 2060)),
                child: SizedBox(
                  height: 45 * (Get.height / 2065),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Phone',
                          style: GoogleFonts.poppins(
                            fontSize: 36 * (Get.height / 2065),
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 500 * (Get.width / 1080),
                          child: TextField(
                            textAlign: TextAlign.end,
                            controller: textController[3],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(top: 100.0 * (Get.height / 2060)),
                child: SizedBox(
                  height: 45 * (Get.height / 2065),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Location',
                          style: GoogleFonts.poppins(
                              fontSize: 36 * (Get.height / 2065),
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 500 * (Get.width / 1080),
                          child: TextField(
                            textAlign: TextAlign.end,
                            controller: textController[4],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.green,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 100 * (Get.width / 1080)),
                    child: Text(
                      'Change',
                      style: GoogleFonts.poppins(
                          fontSize: 32 * (Get.height / 2065)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              primary: Colors.green,
              fixedSize: Size(
                891 * (Get.width / 1080),
                105 * (Get.height / 2065),
              ),
            ),
            child: Text(
              'Save',
              style: GoogleFonts.poppins(fontSize: 32 * (Get.height / 2065)),
            ),
          ),
        ),
      ],
    );
  }
}
