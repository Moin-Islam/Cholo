

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileWidget extends StatelessWidget {

  final String imagePath;
  final  onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
    }) : super(key: key);


  Widget buildImage () {
    final image = AssetImage(imagePath);
    return ClipOval(
      child : Material(
        color: Colors.transparent,
        child: Ink.image(image: image,
        fit: BoxFit.cover,
        width : 128,
        height: 128,
        child: InkWell(onTap: onClicked,),
      ),)
    );
  }

  Widget buildEditIcon() {
    return buildCircle(
      color: Colors.white,
      all: 3,
      child: buildCircle(
        color : Colors.black,
        all : 8,
        child: Icon(
          Icons.edit,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color
  }) {
     return ClipOval(
        child: Container(
          color: color,
          child: child,
          padding: EdgeInsets.all(all),
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack
      (children: [
        buildImage(),
        Positioned
        (
          bottom: 0,
          right: 4,
          child: buildEditIcon()
          )
        ]),
    );
  }
}