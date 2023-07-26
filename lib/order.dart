import 'package:flutter/material.dart';
import 'package:melo_milk/confirm.dart';
import 'package:flutter/services.dart';

class Order extends StatefulWidget {
  String id;

  Order({super.key, required this.id});

  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  final orderController = TextEditingController();

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
                controller: orderController,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
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
                      String litres = orderController.text.trim();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Confirm(
                                  litres: litres,
                                  userid: this.widget.id,
                                )),
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
