import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SRContentView extends StatefulWidget {
  var title = "总计数";
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SRContentViewState();
  }
}

class _SRContentViewState extends State<SRContentView> {
  var _total = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Icon(Icons.add),
                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.red) ),
                  onPressed: () {
                    setState(() {
                      _total++;
                    });
                  },
                ),
                ElevatedButton(
                  child:Text("-"),
                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.orange)),
                  onPressed: (){
                    setState(() {
                      _total --;
                    });
                  },
                ),
              ],
            ),
            Text("${widget.title}:${_total}")
          ],
    );
  }
}