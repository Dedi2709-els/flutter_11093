import 'package:flutter/material.dart';
import 'assets.dart';
import 'package:flutter_19552011093/model/camera.dart';

class CameraSrc {
  static Camera cameraMint = Camera('Mini Mint 7+', 49.90,
      const Color.fromRGBO(112, 177, 161, 1), assets.cameraMint);
  static Camera cameraBlue = Camera('Mini Blue 7+', 50.90,
      const Color.fromRGBO(116, 161, 196, 1), assets.cameraBlue);
  static Camera cameraCoral = Camera('Mini Coral 7+', 51.90,
      const Color.fromRGBO(173, 71, 58, 1), assets.cameraChoral);
  static Camera cameraPink = Camera('Mini Pink 7+', 52.90,
      const Color.fromRGBO(205, 149, 146, 1), assets.cameraPink);
  static Camera cameraLavender = Camera('Mini Lavender 7+', 53.90,
      const Color.fromRGBO(129, 96, 138, 1), assets.cameraLavender);

  static List<Camera> getAll() {
    return [cameraMint, cameraBlue, cameraCoral, cameraPink, cameraLavender];
  }
}

class $ {}
