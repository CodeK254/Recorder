import 'package:flutter/material.dart';

class Responsiveness extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  const Responsiveness({
    required this.mobileBody,
    required this.desktopBody,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,Constraints){
        if(Constraints.minWidth < 600){
          return mobileBody;
        }else{
          return desktopBody;
        }
      }
    );
  }
}