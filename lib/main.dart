import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Widget> listData = [];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List & ListView"),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                addRaisedButton(),
                deleteRaisedButton()
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: listData,
            )
          ],
        ),
      ),
    );
  }

  RaisedButton addRaisedButton() {
    return RaisedButton(
                child: Text("Tambah Data ++"),
                onPressed: () {
                  setState(() {
                    listData.add(
                      Text(
                        "Data ke-" + counter.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                    counter++;
                  });
                },
              );
  }

  RaisedButton deleteRaisedButton() {
    return RaisedButton(
      child: Text("hapus Data"),
      onPressed: (){
        listData.removeLast();
        counter--;
      },
    );
  }
}