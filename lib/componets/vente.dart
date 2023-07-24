import 'package:flutter/material.dart';

class Ventes extends StatefulWidget {
  const Ventes({Key? key}) : super(key: key);

  @override
  State<Ventes> createState() => _VentesState();
}

class _VentesState extends State<Ventes> {
  var venteList = [
    {
      "name": "buldog",
      "picture": "assets/c1.jpg",
      "old_price": 120,
      "price": 500000,
    },
    {
      "name": "belger allemand",
      "picture": "assets/c5.jpg",
      "old_price": 100,
      "price": 300000,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: venteList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProd(
          venteName: venteList[index]['name'],
          ventePicture: venteList[index]['picture'],
          venteOldPrice: venteList[index]['old_price'],
          ventePrice: venteList[index]['price'],
        );
      },
    );
  }
}

class SingleProd extends StatelessWidget {
  final venteName;
  final ventePicture;
  final venteOldPrice;
  final ventePrice;

  SingleProd({
    this.venteName,
    this.ventePicture,
    this.venteOldPrice,
    this.ventePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: venteName,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    venteName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\$$ventePrice",
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.w100),
                  ),
                  subtitle: Text(
                    "\$$venteOldPrice",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w100,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Image.asset(
                  ventePicture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
