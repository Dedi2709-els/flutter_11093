import 'package:flutter/material.dart';
import 'package:flutter_19552011093/source2/util_src2.dart';
import 'package:flutter_19552011093/model/camera.dart';
import 'card_item.dart';

class CardCamera {
  static Card generateCard(BuildContext context, Camera camera) => Card(
        key: ValueKey(camera.type),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(UtilConst.borderRadius)),
        color: camera.color,
        elevation: 0,
        margin: const EdgeInsets.only(
            top: UtilConst.widgetVerticalMargin,
            bottom: UtilConst.widgetVerticalMargin,
            right: UtilConst.cardRightMargin),
        child: CardItem.generateAll(context, camera),
      );
}
