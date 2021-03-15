import 'package:flutter/material.dart';
import 'package:products/components/buttons/FavoriteButton.dart';
import 'package:products/components/carousel/Carousel.dart';
import 'package:products/components/header/HeaderApp.dart';
import 'package:products/components/navigation/BottomNavigation.dart';
import 'package:products/components/typography/Heading.dart';
import 'package:products/components/typography/Paragraph.dart';
import 'package:products/model/car_model.dart';

class DetailPage extends StatelessWidget {
  final Cars car;

  DetailPage({@required this.car});
  @override
  Widget build(BuildContext context) {
    print("SPPED" + car.speed);

    return Scaffold(
        appBar: HeaderApp(),
        floatingActionButton: FavoriteButton(),
        bottomNavigationBar: BottomNavigation(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(car.imageAsset),
                    ),
                  ],
                ),
                Heading(text: car.name),
                Paragraph(text: car.description),
                SizedBox(
                  height: 30,
                ),
                Heading(text: 'How it Looks'),
                SizedBox(
                  height: 30,
                ),
                Carousel(images: car.imageUrls),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Heading(text: "Other information"),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.00),
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.speed),
                            SizedBox(height: 8.0),
                            Text("${car.speed} km/h"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.00),
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.monetization_on),
                            SizedBox(height: 8.0),
                            Text("\$ ${car.price}"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
