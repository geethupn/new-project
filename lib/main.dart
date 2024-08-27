import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_project/modules/seller%20module/addproduct.dart';
import 'package:new_project/modules/seller%20module/orders.dart';
import 'package:new_project/modules/seller%20module/productdetail.dart';
import 'package:new_project/modules/seller%20module/setorder.dart';
import 'package:new_project/modules/user%20module/address.dart';
import 'package:new_project/modules/user%20module/buynow.dart';
import 'package:new_project/modules/user%20module/cancelor.dart';
import 'package:new_project/modules/user%20module/cart.dart';
import 'package:new_project/modules/user%20module/editprofile.dart';
import 'package:new_project/modules/user%20module/home.dart';
import 'package:new_project/modules/user%20module/login.dart';
import 'package:new_project/modules/user%20module/orderpage.dart';
import 'package:new_project/modules/user%20module/orderplaced.dart';
import 'package:new_project/modules/user%20module/ordersummary.dart';
import 'package:new_project/modules/user%20module/payment.dart';
import 'package:new_project/modules/user%20module/paymentmethod.dart';
import 'package:new_project/modules/user%20module/recent.dart';
import 'package:new_project/modules/user%20module/register.dart';
import 'package:new_project/modules/user%20module/settings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Register(),
      debugShowCheckedModeBanner: false,

    );
  }
}