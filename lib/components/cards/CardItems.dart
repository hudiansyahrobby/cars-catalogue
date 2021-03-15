import 'package:flutter/material.dart';
import 'package:products/model/car_model.dart';
import 'package:products/screens/DetailPage.dart';

// ignore: must_be_immutable
class CardItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: carList.map((car) {
        return TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailPage(car: car);
            }));
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            constraints: new BoxConstraints.expand(
              height: 200.0,
            ),
            alignment: Alignment.bottomLeft,
            padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: new DecorationImage(
                image: new AssetImage(
                  car.imageAsset,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: new Text(car.name,
                style: new TextStyle(
                  fontFamily: 'Raleway',
                  letterSpacing: 1.2,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                )),
          ),
        );
      }).toList(),
    );
  }
}

List carList = [
  Cars(
    name: 'Tesla Car Y',
    description:
        'Like every Tesla, Model Y is designed to be the safest vehicle in its class. The low center of gravity, rigid body structure and large crumple zones provide unparalleled protection.Model Y provides maximum versatility—able to carry 7 passengers and their cargo. Each second row seat folds flat independently, creating flexible storage for skis, furniture, luggage and more. The liftgate opens to a low trunk floor that makes loading and unloading easy and quick.',
    imageAsset: 'images/car.jpeg',
    speed: '250',
    price: '20000',
    imageUrls: [
      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-tesla-model-y-mmp-1-1604701558.jpg',
      'https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f1d17f263463ae1e115079f%2F0x0.jpg',
      'https://electrek.co/wp-content/uploads/sites/3/2020/01/Screen-Shot-2020-01-31-at-8.18.41-AM.jpg?quality=82&strip=all&w=1600'
    ],
  ),
  Cars(
    name: 'Mercedes Benz GLS',
    description:
        'The new GLS is Mercedes-Benz’s largest and most luxurious SUV and, above all, offers more: more space, more comfort, more luxury. The confident presence of its exterior stems from its impressive dimensions, which are even larger than those of its predecessor (length +77 mm, width +22 mm). One of the benefits of the 60 mm longer wheelbase is interior spaciousness, especially in the second row. The three fully electrically adjustable seat rows offer all passengers a generous amount of space and outstanding seating comfort. The seats in the third row can be lowered into the floor to increase the boot space (up to 2,400 litres), while the seats in the second row fold flat. Furthermore, a six-seater variant with two luxury individual rear seats in the second seat row is available for the first time.',
    imageAsset: 'images/mercedez.jpeg',
    speed: '220',
    price: '15000',
    imageUrls: [
      'https://www.mercedes-benz.com/en/vehicles/passenger-cars/gls/gls/_jcr_content/root/paragraph_4/paragraph-left/paragraphimage/image/MQ6-8-image-20190417171948/03-mercedes-benz-gls-2019-x167-suv-2560x1440.jpeg',
      'https://www.mercedes-benz.com/en/vehicles/passenger-cars/gls/gls/_jcr_content/image/MQ6-12-image-20190417160559/00-mercedes-benz-gls-2019-x167-suv-2560x1440.jpeg',
      'https://upload.wikimedia.org/wikipedia/commons/5/5e/2020_Mercedes-Benz_GLS_450%2C_front_1.20.20.jpg'
    ],
  ),
  Cars(
    name: 'Ferrari Pininfarina Sergio',
    description:
        'The Pininfarina Sergio is a concept car produced by the Italian design house Pininfarina. It was presented at the 2013 Geneva Motor Show as a tribute to the former chairman of the company and automotive designer, Sergio Pininfarina, who died on 3 July 2012. The car is a coach built barchetta which is based on the mechanical underpinnings of the Ferrari 458 Spider.',
    imageAsset: 'images/ferrari.jpeg',
    speed: '350',
    price: '3 million',
    imageUrls: [
      'https://moneyinc.com/wp-content/uploads/2019/07/2013-Ferrari-Pininfarina-Sergio-Concept.jpg',
      'https://www.carscoops.com/wp-content/uploads/2019/10/c66ece9b-ferrari-sergio.jpg',
      'https://hips.hearstapps.com/hmg-prod/amv-prod-cad-assets/images/13q1/494260/2013-pininfarina-sergio-concept-photos-and-info-news-car-and-driver-photo-503819-s-original.jpg?fill=2:1&resize=1200:*'
    ],
  ),
  Cars(
    name: 'Aston Martin Valkyrie',
    description:
        "The Aston Martin Valkyrie (also known by its code-names as AM-RB 001 and Nebula) is a limited production hybrid sports car collaboratively built by British automobile manufacturers Aston Martin, Red Bull Racing Advanced Technologies and several others.The sports car is a product of collaboration between Aston Martin and Red Bull Racing to develop a track-oriented car entirely usable and enjoyable as a road car, conceived by Adrian Newey, Dr Andy Palmer, Christian Horner and Simon Spoule.The car's makers claim the title of fastest street-legal car in the world for it. Adrian Newey, Red Bull Racing's Chief Technical Officer and the world's most successful F1 designer aided in the design of the car.",
    imageAsset: 'images/aston.jpeg',
    speed: '350',
    price: '3.2 million',
    imageUrls: [
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Aston_Martin_Valkyrie_Verification_Prototype_001_Genf_2019_1Y7A5569.jpg/1200px-Aston_Martin_Valkyrie_Verification_Prototype_001_Genf_2019_1Y7A5569.jpg',
      'https://cimg1.ibsrv.net/ibimg/hgm/1920x1080-1/100/740/aston-martin-valkyrie_100740349.jpg',
      'https://www.thesupercarblog.com/wp-content/uploads/2019/07/Aston-Martin-Valkyrie-Silverstone-3.jpg'
    ],
  ),
];
