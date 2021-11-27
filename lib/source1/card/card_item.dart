import 'package:flutter/material.dart';
import 'package:flutter_19552011093/source1/button/button.dart';
import 'package:flutter_19552011093/source2/util_src2.dart';
import 'package:flutter_19552011093/source2/messages.dart';
import 'package:flutter_19552011093/model/camera.dart';

class CardItem {
  static dynamic generateAll(BuildContext context, Camera camera) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [getCardText(context, camera), getCardImage(camera)],
        ),
      );

  static dynamic generateCardItem(var child) => Container(
        margin:
            const EdgeInsets.symmetric(vertical: UtilConst.cardVerticalMargin),
        child: Align(
          alignment: Alignment.centerLeft,
          child: child,
        ),
      );

  static dynamic getCardText(BuildContext context, Camera camera) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          generateCardItem(const Text(
            Messages.limitedEdition,
            style: TextStyle(color: Colors.white, fontSize: 12),
          )),
          generateCardItem(Align(
            alignment: Alignment.centerLeft,
            child: camera.getFormattedType(),
          )),
          generateCardItem(Align(
            alignment: Alignment.centerLeft,
            child: camera.getFormattedPrice(),
          )),
          Button.generate(
            backgroundColor: Colors.white,
            fontColor: camera.color,
            context: context,
            camera: camera,
            isFunctionActive: true,
          ),
        ],
      );

  static dynamic getCardImage(Camera camera) => Positioned.fill(
        right: UtilConst.overflow,
        child: Align(
          alignment: Alignment.centerRight,
          child: camera.getImage(),
        ),
      );
}
