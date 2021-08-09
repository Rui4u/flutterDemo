import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  ScrollController controller = ScrollController(initialScrollOffset: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      print("滚动了${controller.offset}");
    });
    // runCalc();
  }

//   void runCalc() async {
//     print("begin");
//     var result = await compute(calc,100);
//     print(result);
//     print("end");
// }
  // int calc(int count) {
  //   sleep(Duration(seconds:2));
  //   return count * 4;
  // }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (ScrollNotification notification) {

        if(notification is ScrollStartNotification) {
          print("开始滚动");
        } else if(notification is ScrollUpdateNotification) {
          print("滚动中");
          print("滚动了${notification.metrics.pixels}像素");
          print("最大像素${notification.metrics.maxScrollExtent}");
        } else if(notification is ScrollEndNotification) {
          print("结束滚动");
        }
        
        return true;
      },
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("title"));
        },
        controller: controller,
      ),
    );
  }
}

/*自定义的ScrollView*/
class CustomViewDemo extends StatelessWidget {
  const CustomViewDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: false,
          elevation: 100,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("拉勾招聘"),
            background: Text("哈哈"),
          ),
        ),
        SliverGrid(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                  color: Color.fromARGB(255, Random().nextInt(256),
                      Random().nextInt(256), Random().nextInt(256)));
            }, childCount: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1)),
        SliverSafeArea(
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.people),
            title: Text("联系人"),
          );
        }, childCount: 2)))
      ],
    );
  }
}

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 1),
        itemBuilder: (BuildContext context, int index) {
          return Container(
              color: Color.fromARGB(255, Random().nextInt(256),
                  Random().nextInt(256), Random().nextInt(256)));
        });
  }
}

class ListViewDemo2 extends StatelessWidget {
  const ListViewDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.people),
            trailing: Icon(Icons.delete),
            title: Text("文本${index + 1}"),
            subtitle: Text("子标题"),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemCount: 10);
  }
}

class ListViewBuilderDemo extends StatelessWidget {
  const ListViewBuilderDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(Icons.people),
          trailing: Icon(Icons.delete),
          title: Text("文本${index + 1}"),
          subtitle: Text("子标题"),
        );
      },
      itemCount: 20,
    );
  }
}

class ListViewDemo1 extends StatelessWidget {
  const ListViewDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // itemExtent: 80,
      children: List.generate(100, (index) {
        return ListTile(
          leading: Icon(Icons.people),
          trailing: Icon(Icons.delete),
          title: Text("文本${index + 1}"),
          subtitle: Text("子标题"),
        );
      }),
    );
  }
}
