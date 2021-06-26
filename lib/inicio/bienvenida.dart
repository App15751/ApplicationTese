import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'dart:math';

class Bienvenida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        SizedBox(
          height: 200.0,
          width: 200.0,
          child: Carrusel(),
        ),
      ]),
    );
  }
}

Widget Carrusel() {
  return Carousel(
    images: [
      NetworkImage(
          'https://2.bp.blogspot.com/-LpNFsubDbYI/XTdxp9SFoHI/AAAAAAACpQw/h0o960MD9sYAf_z0_ZoyQW-UaVdHetixgCLcBGAs/s1600/thumbnail%2B%252810%2529.jpg'),
      NetworkImage(
          'https://1.bp.blogspot.com/-_9tEt6fodOY/XXrr0MU-WgI/AAAAAAACwgs/P_Tw-8BX6i47USi6SKc0KPvfqyB2BcjXACLcBGAsYHQ/s1600/b2.jpg'),
      NetworkImage(
          'https://lh3.googleusercontent.com/proxy/-Nlekb_5_ucrSpu-7aec-zCZ2Gc8_8JGMXz76iHGOxiNrnKhacsymp2NXLnLp-fXXMQC67ik8Y0OHewFtK2UJWzSw5ZkiPAg'),
      NetworkImage('https://i.ytimg.com/vi/c_HxG5kncM4/maxresdefault.jpg'),
      NetworkImage(
          'https://fastly.4sqi.net/img/general/600x600/408463298_HZ_5b6EMWCyN8exfE8vvYffNgq0xGYrV5KCNyDDjpdo.jpg'),
    ],
    showIndicator: false,
    borderRadius: false,
    moveIndicatorFromBottom: 180.0,
    noRadiusForIndicator: true,
    overlayShadow: true,
    overlayShadowColors: Colors.white,
    overlayShadowSize: 0.7,
  );
}