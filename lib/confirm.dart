import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:melo_milk/status.dart';
import 'package:intl/intl.dart';

class Confirm extends StatefulWidget {
  String userid;
  String litres;

  Confirm({super.key, required this.litres, required this.userid});

  @override
  State<Confirm> createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  String transport = '1500';
  String unit_price = '2000';
  int total = 0;

  @override
  void initState() {
    super.initState();
    total = int.parse(this.widget.litres) * int.parse(unit_price) +
        int.parse(transport);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Melo Milk'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                // padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                child: Text(
                  "Confirm",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(6),
            child: Row(
              children: <Widget>[
                Text(
                  'Date',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '${getCurrentDate()}',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(6),
            child: Row(
              children: <Widget>[
                Text(
                  'Litres',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  this.widget.litres,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(6),
            child: Row(
              children: <Widget>[
                Text(
                  'Unit Price',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  unit_price,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(6),
            child: Row(
              children: <Widget>[
                Text(
                  'Transport',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  transport,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(6),
            child: Row(
              children: <Widget>[
                Text(
                  'Total',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  total.toString(),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 40,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              shadowColor: Colors.greenAccent,
              color: Colors.black,
              elevation: 7,
              child: GestureDetector(
                  onTap: () {
                    dynamic db = FirebaseFirestore.instance;
                    // Create a new user with a first and last name
                    final deal = <String, dynamic>{
                      "userid": this.widget.userid,
                      "date": {getCurrentDate()},
                      "litres": this.widget.litres,
                      "unitprice": unit_price,
                      "transport": transport,
                      "amount": total
                    };

                    // Add a new document with a generated ID
                    db.collection("deals").add(deal).then(
                        (DocumentReference doc) =>
                            print('DocumentSnapshot added with ID: ${doc.id}'));

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Status()),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  String getCurrentDate() {
    var now = DateTime.now();
    var formatter =
        DateFormat('yyyy-MM-dd'); // You can choose the desired date format here
    return formatter.format(now);
  }
}
