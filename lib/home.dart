import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff99BC85),
        title: Text("HOME", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Home", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff3E3C3C)),),
                        Text("Semua menu yang tersedia", style: TextStyle(fontSize: 12, color: Color(0xff3E3C3C)),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 30),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/newmenu');
                      }, 
                      child: Text("New Menu+", style: TextStyle(color: Colors.white)), 
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff99BC85)),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}