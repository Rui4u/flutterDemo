import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
        shrinkWrap: true,

        children:[
        RowList(),
      ]
    );
  }
}

class RowList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowProductItem("标题1","文案1文案1文案1文案1文案1文案1文案1"),
        RowProductItem("标题2","文案2文案2文案2文案2文案2文案2文案2"),
        RowProductItem("标题3","文案3文案3文案3文案3文案3文案3文案3")
      ],
    );
  }
}

class RowProductItem extends StatelessWidget {
  final String title;
  final String subText;
  RowProductItem(this.title, this.subText);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade200,
            width: 3
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(fontSize: 36, color: Colors.red),
            ),
            SizedBox(height: 10),
            Text(subText,
              style: TextStyle(fontSize: 18, color:Colors.grey),
            ),
            SizedBox(height: 10),
            Image.network("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F16%2F10%2F29%2F2ac8e99273bc079e40a8dc079ca11b1f.jpg&refer=http%3A%2F%2Fbpic.588ku.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1629268304&t=122611e0fd84342198e7b619e9cb0522")
          ],
        ),
    );
  }
}