
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:helloflutter/day07/ListViewDemo.dart';

import 'day01-03/StatelessWidgetDemo.dart';
import 'day01-03/03_StatefulWidgetDemo.dart';
import 'day04/04_WidgetDemo.dart';
import 'day05/ImageDemo.dart';
import 'day05/TextFiledDemo.dart';
import 'day06/LayoutWidget.dart';

// 调用runapp函数
main() => runApp(SRApp());

class SRApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoApp(
      // debugShowCheckedModeBanner: false,
        home: SRHomePage(),
        localizationsDelegates:[
            DefaultMaterialLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
            DefaultWidgetsLocalizations.delegate,
        ]
    );
  }
}

// class SRApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       // debugShowCheckedModeBanner: false,
//         home: SRHomePage()
//     );
//   }
// }

class SRHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF00b38a),
          title: Text("拉勾招聘"),
        )
        ,
      body: ListViewDemo(),
      // body:ListView(
      //   children: [
      //     LayoutDemo(),
      //     TextFiledDemo(),
      //     ImageDemo(),
      //     SRContentBody(),
      //     SRContentView(),
      //     TextDemo()
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>print("FloatingActionButton"),child: Icon(Icons.add),),
    );

  }
}

class SRContentBody extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return SRContentBodyState();
  }
}

class SRContentBodyState extends State<SRContentBody> {
  var value = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(value: value,
              onChanged: (value){
            setState(() {
              this.value = value ?? false;
            });
              }),
          Text(
            "hello world",
            style: TextStyle(
                fontSize: 32,
                color:Colors.orange
            ),
          )
        ],
      ),
    );
  }
}
