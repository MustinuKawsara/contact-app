import 'package:bella_frontend/views/HomeView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
       appBarTheme: AppBarTheme(
         elevation: 0,
         backgroundColor: Colors.white,
         titleTextStyle: TextStyle(
           fontSize: 20,
           color: Colors.black,
           fontWeight: FontWeight.w600,
         ),
         iconTheme: IconThemeData(
           color: Colors.white,
           size: 25,
           ),

       ),
          textTheme: const TextTheme(
            bodyText1: TextStyle(fontSize: 24,color: Colors.black, fontWeight: FontWeight.bold),
            bodyText2: TextStyle(fontSize: 14,color: Colors.grey,)

          ),
          dividerTheme: const DividerThemeData(
            color: Colors.brown,
            thickness: 1,
          ),
      ),
      darkTheme: ThemeData.dark().copyWith(
appBarTheme: AppBarTheme(
         elevation: 0,
         backgroundColor: Colors.black,
         titleTextStyle: TextStyle(
           fontSize: 20,
           fontWeight: FontWeight.w600,
         ),
         iconTheme: IconThemeData(
           color: Colors.black,
           size: 25,
           ),

       ),
         bottomNavigationBarTheme: BottomNavigationBarThemeData(
           backgroundColor: Color(0x0002A2A40),
           selectedIconTheme:IconThemeData(
             color: Colors.black,
             size: 25,), 
             ),


          textTheme: const TextTheme(
            bodyText1: TextStyle(fontSize: 24,color: Colors.white, fontWeight: FontWeight.bold),
            bodyText2: TextStyle(fontSize: 14,color: Colors.grey,)

          ),
          dividerTheme: const DividerThemeData(
            color: Colors.brown,
            thickness: 1,
          ),
      ),
      themeMode: ThemeMode.dark,
      home:  HomeView(),
    );
  }
}

