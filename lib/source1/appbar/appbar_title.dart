import 'package:flutter/material.dart';
import 'package:flutter_19552011093/source2/assets.dart';

class BarTitle {
  static dynamic get(var context) {
    return Center(
        child: Image.asset(
      assets.banner,
      cacheWidth: int.parse(
          (MediaQuery.of(context).size.width * 0.70).toStringAsFixed(0)),
    ));
  }
}
