import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recycile_bin_app/abstracts.dart';
import 'package:recycile_bin_app/bill_page.dart';
import 'package:recycile_bin_app/edit_profile.dart';
import 'package:recycile_bin_app/home_Screen.dart';
import 'package:recycile_bin_app/order_history.dart';
import 'package:recycile_bin_app/setting_page.dart';
import 'package:recycile_bin_app/sing_up_binding.dart';
import 'package:recycile_bin_app/sucsses.dart';

import 'login_page.dart';
import 'login_page_bind.dart';
import 'sign_in_view.dart';
import 'sign_up_view.dart';
import 'sign_up_done.dart';
import 'bill_page.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/admin',
    getPages: [
      GetPage(name: '/first', page: () => FirstView(), binding: FirstBinding()),
      GetPage(name: '/signIn', page: () => const SignInView()),
      GetPage(
          name: '/signUp',
          page: () => const SignUpView(),
          binding: SignUpBinding()),
      GetPage(name: '/home', page: () => HomeScreen()),
      GetPage(name: '/bill', page: () => const BillPage()),
      GetPage(name: "/succes", page: () => OrderSucess()),
      GetPage(name: "/orders", page: () => OrderHistory()),
      GetPage(name: "/settings", page: ()=> SettingsPage()),
      GetPage(name: "/Edit", page: ()=> EditProfile()),
    ],
  ));
}
