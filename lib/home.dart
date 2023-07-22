import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  int selectedCategoryIndex = 0;
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Widget buildGridView() {
    List<String> imageList = [
      'assets/chien1.jpg',
      'assets/chien2.jpg',
      'assets/chien3.jpg',
      'assets/chien4.jpg',
      'assets/chien5.jpg',
    ];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: imageList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(
          imageList[index],
          fit: BoxFit.cover,
        );
      },
    );
  }

  Widget images_carousel = Container(
    height: 300.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/chien1.jpg'),
        AssetImage('assets/chien2.jpg'),
        AssetImage('assets/chien3.jpg'),
        AssetImage('assets/chien4.jpg'),
        AssetImage('assets/chien5.jpg'),
      ],
      autoplay: false,
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
    ),
  );

  @override
  Widget build(BuildContext context
) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Application"),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          images_carousel,
          SizedBox(height: 20.0),
          SizedBox(height: 20.0), // Add some spacing after the grid
          Padding(
            padding: EdgeInsets.all(15),
            child: new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextButton.icon(
                  onPressed: () {
                    // Action to be performed when "Javatpoint" button is pressed
                    print("Javatpoint button pressed!");
                  },
                  icon: Icon(Icons.code),
                  label: Text('Javatpoint'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    // Action to be performed when "Flutter" button is pressed
                    print("Flutter button pressed!");
                  },
                  icon: Icon(Icons.favorite),
                  label: Text('Flutter'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    // Action to be performed when "MySQL" button is pressed
                    print("MySQL button pressed!");
                  },
                  icon: Icon(Icons.badge),
                  label: Text('MySQL'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




              
      

