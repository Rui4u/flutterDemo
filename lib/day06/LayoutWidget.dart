import 'package:flutter/material.dart';
class LayoutDemo extends StatefulWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  _LayoutDemoState createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Container(width: 50, height: 100, color: Colors.blue,),
        Container(width: 50, height: 100, color: Colors.purple),
        Container(width: 50, height: 50, color: Colors.yellow),
        Container(width: 50, height: 100, color: Colors.red)
      //   Expanded(
      //     // flex: 1,
      //       child: Container(width: 50, height: 100, color: Colors.blue,)
      //   ),
      //   Expanded(
      //       // flex: 2,
      //       child: Container(width: 50, height: 100, color: Colors.purple)
      //   ),
      //   Expanded(
      //       // flex: 3,
      //       child: Container(width: 50, height: 100, color: Colors.yellow)
      //   ),
      //   Expanded(
      //       // flex: 4,
      //       child: Container(width: 50, height: 100, color: Colors.red)
      //   )
      ],
    );
  }
}
