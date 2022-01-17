import 'dart:async';

import 'package:flutter/material.dart';

class halfcircle extends StatelessWidget {
  CustomClipper<Path> drawerClip;
   halfcircle( {Key? key,required this.drawerClip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: drawerClip,
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Color(0xff4F68BF)),
      ),
    );
  }
}

class DrawerClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.addOval(Rect.fromCircle(center: Offset(400, 30), radius: 150));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class DrawerClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.addOval(Rect.fromCircle(center: Offset(40, 200), radius: 150));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
