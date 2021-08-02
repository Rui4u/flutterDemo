import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text.rich(
          TextSpan(
          children: [
            TextSpan(text: "hello3", style: TextStyle(color: Colors.red)),
            WidgetSpan(child: Icon(Icons.favorite, color: Colors.red)),
            TextSpan(text: "hello3", style: TextStyle(color: Colors.cyan)),
            WidgetSpan(child: Icon(Icons.favorite, color: Colors.cyan)),
            TextSpan(text: "hello3", style: TextStyle(color: Colors.green)),
            WidgetSpan(child: Icon(Icons.favorite, color: Colors.green)),
          ]
          )
        ),
        ElevatedButton(
          child: Icon(Icons.favorite),
          onPressed: ()=>{
          }
        ),
        ElevatedButton(onPressed: ()=>print("ElevatedButton"), child: Icon(Icons.favorite)),
        TextButton(onPressed: ()=>print("TextButton"), child: Icon(Icons.favorite)),
        OutlinedButton(onPressed: ()=>print("OutlinedButton"),child: Icon(Icons.favorite)),
        FloatingActionButton(onPressed: ()=>print("FloatingActionButton"),child: Icon(Icons.favorite)),
        TextButton(
            onPressed: ()=>print("TextButton"),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite),
                Text("喜欢")
              ],
            ),
            style:ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(20, 20)),
                // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor:MaterialStateProperty.all(Colors.amber) ,
                foregroundColor:MaterialStateProperty.all(Colors.red) ,
                shape:MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.only(
                      topLeft: (Radius.circular(10)),
                      bottomRight: (Radius.circular(10))
                  ))
              )
            )
        ),

      ],

    );
  }
}