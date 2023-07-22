import 'package:chien/toilettage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class horizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return toilettage();
              }));
            },
            child: Service(
              image_location: 'assets/c1.jpg',
              image_caption: 'elevage',
            ),
          ),
          Service(
            image_location: 'assets/t1.jpg',
            image_caption: 'Toilettage',
          ),
          Service(image_location: 'assets/v1.jpg', image_caption: 'vétérinaire')
        ],
      ),
    );
  }
}

class Service extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Service({required this.image_location, required this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 1000.0,
                height: 100.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: new TextStyle(fontSize: 12.0),
                ),
              )),
        ),
      ),
    );
  }
}
