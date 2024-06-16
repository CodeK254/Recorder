import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:recoding/models/responsiveness.dart';
import 'package:recoding/views/desktop/desktop_home.dart';
import 'package:recoding/views/mobile_view/mobile_home.dart';

void main() {
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Responsiveness(
        mobileBody: MobileView(), 
        desktopBody: DesktopView(),
      ),
    )
  );
}