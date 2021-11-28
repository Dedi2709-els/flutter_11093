import 'package:flutter/material.dart';
import 'package:flutter_19552011093/source2/messages.dart';
import 'package:flutter_19552011093/source2/util_src2.dart';
import 'package:flutter_19552011093/halaman/itemdetail.dart';

class Button {
  static dynamic generate({
    var backgroundColor = Colors.white,
    var fontColor = Colors.black,
    required BuildContext context,
    var isFunctionActive = false,
    var camera,
  }) =>
      Container(
        margin:
            const EdgeInsets.symmetric(vertical: Utilsrc.cardVerticalMargin),
        child: Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
              onPressed: isFunctionActive
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemDetail(camera: camera),
                        ),
                      );
                    }
                  : () {},
              style: TextButton.styleFrom(
                  backgroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(Utilsrc.borderRadius))),
              child: Text(
                Messages.buy,
                style: TextStyle(color: fontColor),
              )),
        ),
      );
}
