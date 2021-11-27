import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_19552011093/source2/messages.dart';

class Camera {
  String type = "";
  double price = 0;
  String assetsPath = "";
  Color color = Colors.white;

  Camera(this.type, this.price, this.color, this.assetsPath);

  String get getFullName => Messages.title + " " + type;

  dynamic getFormattedType(
          {TextStyle titleStyle =
              const TextStyle(color: Colors.white, fontSize: 15),
          TextStyle typeStyle = const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold)}) =>
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: Messages.title + " ",
          style: titleStyle,
          children: [
            TextSpan(text: type, style: typeStyle),
          ],
        ),
      );

  dynamic getFormattedPrice(
          {TextStyle signStyle =
              const TextStyle(color: Colors.white, fontSize: 20),
          TextStyle priceStyle = const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold)}) =>
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "\$ ",
          style: signStyle,
          children: [
            TextSpan(text: price.toStringAsFixed(2), style: priceStyle),
          ],
        ),
      );

  dynamic getImage({var size = 120.0}) => Image.asset(assetsPath, width: size);
}
