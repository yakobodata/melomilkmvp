import 'package:flutter/material.dart';
import 'package:melo_milk/confirm.dart';

class Order extends StatefulWidget {
  const Order({super.key});
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Melo Milk'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                    child: Text(
                      "Order",
                      style:
                      TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Litres',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 20,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Confirm()),
                      );
                    },
                    child: Center(
                      child: Text(
                        'ORDER',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
