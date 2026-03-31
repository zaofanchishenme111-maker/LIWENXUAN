
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.aladinTextTheme(
          Theme.of(context).textTheme,
        ),
        useMaterial3: false,
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.shopping_cart),
            SizedBox(width: 50,),
            Icon(Icons.search_rounded,color: Colors.black),
            SizedBox(width: 50,),
            Icon(Icons.settings,color: Colors.amber,),
            SizedBox(width: 100,)
          ],
          title: Text("HELLO FLUTTER------SHIZHUOYUAN",),

        ),
        body:  Center(
          child: Text("HELLOWORLD",
          style: GoogleFonts.aladin(
            fontSize: 100,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            color: Colors.blue,
          ),),
        ),
      ),
    );
  }
}