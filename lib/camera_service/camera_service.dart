import 'package:flutter_19552011093/source2/camera_src2.dart';
import 'package:flutter_19552011093/model/camera.dart';

class CameraService {
  static List<Camera> findAll([String keyword = ""]) {
    List<Camera> cameraList = CameraSrc.getAll();

    if (keyword.isEmpty) {
      return cameraList;
    } else {
      return cameraList
          .where((camera) =>
              camera.getFullName.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    }
  }
}
