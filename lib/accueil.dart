import 'package:chien/horizontale.dart';
import 'package:chien/toilettage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'bottom_bar.dart';
import 'home.dart';
 
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Accueil(),
    )
  );
}
class Accueil extends StatefulWidget {
   @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil>
  with SingleTickerProviderStateMixin {
   int _currentIndex = 0;
   final _pages = [

    HomePage()
   ];
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
 
  @override
  
  Widget build(BuildContext context) {
 return Scaffold(
      
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: const TextField(
          decoration: InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
        ),
      )

        
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 7,
        currentIndex: 0,
        onTap: (index){
        setState(() => _currentIndex = index,
          
        );
        },
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          label: 'Home',
        backgroundColor: Colors.blue,
      ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
        label: 'Profile',
      backgroundColor: Colors.blue,
    ),
      BottomNavigationBarItem(
        icon: Icon(Icons.badge_rounded),
        label: 'Payement',
        backgroundColor: Colors.blue,
      ) ,
      BottomNavigationBarItem(
        icon: Icon(Icons.menu_book),
        label: 'Reservation',
        backgroundColor: Colors.blue,
      ),

        ],
      ),
     /* drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(accountName: Text('bazoum'),
           accountEmail: Text('bazoumbarakissa@gmail.com'),
         currentAccountPicture: GestureDetector(
          child: new CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white,),
          )
         )
        )
          ],
        ),
      ),*/
      body:  _pages[_currentIndex],
      //ListView(
        //padding: EdgeInsets.only(left: 20.0),
        //children: <Widget>[
          // images carousel  begin here
          //images_carousel,
          //Text('Nos services',
        //style: TextStyle(
          //fontFamily: 'varela',
         // fontSize: 42.0,
         // fontWeight: FontWeight.bold
        //)),
      //SizedBox(height: 15.0),
      //TabBar(
       // controller: _tabController,
       // indicatorColor: Colors.transparent,
       // labelColor: Color(0xFFC88D67),
       // isScrollable: true,
       // labelPadding: EdgeInsets.only(right: 45.0),
       // unselectedLabelColor: Color(0xFFCDCDCD),
         // tabs: [
          //  Tab(
           //   child: Text('cookies',
          // style: TextStyle(
          /* fontFamily: 'valera',
            fontSize: 21.0,
           ), 
            ),
            ), 
            Tab(
              child: Text('cookie cake',
           style: TextStyle(
            fontFamily: 'valera',
            fontSize: 21.0,
          ), 
        ),
        ),
        Tab(
          child: Text('Ice cream',
     //  style: TextStyle(
        //fontFamily: 'valera',
    //  fontSize: 21.0,
       ), 
       // ),
        //), 

        
     // ] ),
      
      
        //Container(
          //height: MediaQuery.of(context).size.height -40,
          //width: double.infinity,
          //child: TabBarView(
            //controller: _tabController, children: [
             // toilettage(),

           // ],
         // ),
       // ),

         //padding widget
          //new Padding(padding: const EdgeInsets.all(10.0),
        //child: new Text('Nos services'),),
        //horizontal*/
      // horizontal(),
      
        
      /*  ],
      ),
      //floatingActionButton: FloatingActionButton(onPressed: () {},
    //backgroundColor: Color(0XFF17532),
    //child: Icon(Icons.fastfood),
   // ),
   // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //bottomNavigationBar: BottomBar(),
      */
    );
  }
}