import 'package:flutter/material.dart';

//import 'package:flutter_course/pages/home_page.dart';
import 'package:flutter_course/pages/contador_page.dart';

class ZindeyApp extends StatelessWidget {

  const ZindeyApp({ Key? key }) : super( key: key );

  @override
  Widget build( BuildContext context ) {

    return const MaterialApp(
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
      ),
      debugShowCheckedModeBanner: false,
    );

  }

}