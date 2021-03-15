import 'package:flutter/material.dart';
import 'package:products/components/cards/CardItems.dart';
import 'package:products/components/header/HeaderApp.dart';
import 'package:products/components/navigation/BottomNavigation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderApp(),
      bottomNavigationBar: BottomNavigation(),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 100),
                padding: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.redAccent,
                  width: 7.0,
                ))),
                child: Text(
                  "All Cars",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Raleway',
                      letterSpacing: 1.3,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CardItems()
            ],
          ),
        )
      ]),
    );
  }
}
