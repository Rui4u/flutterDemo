import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TextFiledDemo extends StatefulWidget {
  const TextFiledDemo({Key? key}) : super(key: key);

  @override
  _TextFiledDemoState createState() => _TextFiledDemoState();
}

class _TextFiledDemoState extends State<TextFiledDemo> {
  final userNameTextController = TextEditingController();
  final passwordTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          child: TextField(
            controller: userNameTextController,
            decoration: InputDecoration(
                labelText: "userName",
                hintText: "请输入账号",
                helperText: "password",
                icon: Icon(Icons.supervised_user_circle),
                border: OutlineInputBorder(
                  gapPadding: 4,
                )
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: TextField(
          controller: passwordTextController,
            decoration: InputDecoration(
                labelText: "password",
                hintText: "请输入密码",
                helperText: "password",
                icon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  gapPadding: 4,
                )
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(15),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: Text("登录"),
            onPressed: () {
              print("账号: ${userNameTextController.text}, 密码: ${passwordTextController.text}");
            },
          ),
        )
      ],
    );
  }
}
