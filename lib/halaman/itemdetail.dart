import 'package:flutter/material.dart';
import 'package:flutter_19552011093/source1/appbar/appbar.dart';
import 'package:flutter_19552011093/source1/bottombar/bottombar.dart';
import 'package:flutter_19552011093/source2/deskripsi_src2.dart';
import 'package:flutter_19552011093/source2/messages.dart';
import 'package:flutter_19552011093/model/camera.dart';
import 'package:flutter_19552011093/model/deskripsi.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({Key? key, required this.camera}) : super(key: key);
  final Camera camera;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar.generate(context,
            menu: Messages.screenDetail, iconColor: camera.color),
        body: Padding(
          padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: DescriptionConst.getAll().length,
                itemBuilder: (context, index) =>
                    Description.getFormattedDescription(
                        camera, DescriptionConst.getAll()[index]),
              ))
            ],
          ),
        ),
        bottomNavigationBar: BottomBar.generate(camera: camera));
  }
}
