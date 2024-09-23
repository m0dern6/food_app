import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/admin_flow/first_screen.dart';
import 'package:food_app/admin_flow/notification_screen.dart';
import 'package:food_app/colors.dart';
import 'package:food_app/constants/toast_and_bottom_sheet.dart';
import 'package:food_app/kitchen_flow/home.dart';
import 'package:food_app/kitchen_flow/notification_screen.dart';
import 'package:food_app/kitchen_flow/order_list.dart';
import 'package:food_app/reception_flow/loading_screen.dart';
import 'package:food_app/reception_flow/notification_screen.dart';
import 'package:food_app/reception_flow/profile.dart';
import 'package:food_app/reception_flow/sign_in.dart';
import 'package:food_app/reception_flow/sign_up.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: primaryColor,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => const LoadingScreen(),
      'sign_in': (context) => const SignIn(),
      'sign_up': (context) => const SignUp(),
      'profile': (context) => const Profile(),
      'notification_screen': (context) => const NotificationScreen(),
      'kitchen_home': (context) => const KitchenHome(),
      'kitchen_order': (context) => const KitchenOrder(),
      'kitchen_notification_screen': (context) =>
          const KitchenNotificationScreen(),
      'admin_screen': (context) => const AdminScreen(),
      'admin_notification_screen': (context) => const AdminNotificationScreen(),
      'toast_and_bottom_sheet': (context) => const ToastAndBottomSheetScreen(),
    });
  }
}
