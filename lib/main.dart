import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:softvence_task/binding/home_binding.dart';
import 'package:softvence_task/views/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  Stripe.publishableKey =
      'pk_test_51RlcUzFk2WwwkijfMITnLMmx31KsbhhWuhc1e5kcnpywlsN9Gmug13sQmVsjVr0ROo3tzNXIXTKGJbDAXL2Y6ND5002nWpTOSq';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => child!,
      child: GetMaterialApp(
        title: 'Softvence',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        initialBinding: HomeBinding(),
        home: HomePage(),
      ),
    );
  }
}
