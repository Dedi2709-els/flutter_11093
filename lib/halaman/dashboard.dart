import 'package:flutter/material.dart';
import 'package:flutter_19552011093/camera_service/camera_service.dart';
import 'package:flutter_19552011093/source1/appbar/appbar.dart';
import 'package:flutter_19552011093/source1/card/card_camera.dart';
import 'package:flutter_19552011093/source1/field/search.dart';
import 'package:flutter_19552011093/source2/util_src2.dart';
import 'package:flutter_19552011093/model/camera.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Camera> _cameraFound = [];

  @override
  initState() {
    _cameraFound = CameraService.findAll();
    super.initState();
  }

  searchCamera(String keyword) {
    setState(() {
      _cameraFound = CameraService.findAll(keyword);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar.generate(context),
        body: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Column(
            children: [
              Utilsrc.getSizedBoxSparator(),
              Search.generate(searchCamera),
              Utilsrc.getSizedBoxSparator(),
              Expanded(
                  child: ListView.builder(
                itemCount: _cameraFound.length,
                itemBuilder: (context, index) =>
                    CardCamera.generateCard(context, _cameraFound[index]),
              )),
            ],
          ),
        ));
  }
}
