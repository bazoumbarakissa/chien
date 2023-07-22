import 'package:chien/accueil.dart';
import 'package:flutter/material.dart';
 class Welcome extends StatelessWidget {
   const Welcome({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
       floatingActionButton: FloatingActionButton.extended(
         elevation: 20.0,
         foregroundColor: Colors.cyanAccent,
         backgroundColor: Colors.indigo,
        label: const Text('Continuer'), 
        onPressed: () { 
          var materialPageRoute = MaterialPageRoute(builder: (context) =>  Accueil());
          Navigator.push(
          context,
          materialPageRoute,
        );

        },
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Colors.lightBlue) ),
      ),  
         body: Stack(
           
           children: [
             
             Container(
               decoration: const BoxDecoration(
                 image:DecorationImage(
                 image: AssetImage('assets/chien1.jpg'),
                 fit: BoxFit.cover,
               ),
              ),
             ),
             Container(
               decoration: const BoxDecoration(
                 gradient: LinearGradient(
                   colors: [
                     Colors.white,
                     Colors.transparent,
                   ],
                  begin: Alignment.bottomRight,
                end: Alignment.topCenter,
            
              ),
               ),
             ),
             //Column(
             //  crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              // children: [
               //  Container(
                //   height: 40,
                //   width: 200,
                  // color: Colors.blue,
                  // child: const Center(
                  //   child: Text('button')),
                // )
               //],

            // )
           ],
         ),
       ),
     );
   }
 }
