import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Melo Milk'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
            child: Text(
              "Order confirmed",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
