import 'package:flutter/cupertino.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FadeInImage(
        fadeInDuration: Duration(seconds: 1),
        fadeOutDuration: Duration(seconds: 1),
        placeholder: AssetImage("assets/image/test.png"),
        image:AssetImage("assets/image/test2.png")
    );
  }
}
