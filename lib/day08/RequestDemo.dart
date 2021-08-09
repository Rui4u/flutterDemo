import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RequestDemoWidget extends StatefulWidget {
  const RequestDemoWidget({Key? key}) : super(key: key);

  @override
  _RequestDemoWidgetState createState() => _RequestDemoWidgetState();
}

class _RequestDemoWidgetState extends State<RequestDemoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final dio = Dio();
    dio.get("https://httpbin.org/get").then((value) => print(value));
  }
}
