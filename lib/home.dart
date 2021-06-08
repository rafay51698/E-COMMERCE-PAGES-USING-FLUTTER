import 'package:ecom_page/circle.dart';
import 'package:flutter/material.dart';

class Ecom extends StatefulWidget {
  @override
  _EcomState createState() => _EcomState();
}

class _EcomState extends State<Ecom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        title: Text("Ecom App UI",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: Container(color: Colors.grey[400],
        child: ListView(
          children: [
            SizedBox(height: 10,),
            abc('assets/iphone12.jpg', 'Iphone 12'),
            SizedBox(height: 10,),
            abc('assets/note.jpg', "Note 20 Ultra"),SizedBox(height: 10,),
            abc('assets/mb.jpg', "Macbook Air"),SizedBox(height: 10,),
            abc('assets/mbpro.jpg', "Macbook Pro"),SizedBox(height: 10,),
            abc('assets/pc.jpg', "Gaming Pc"),SizedBox(height: 10,),
            Center(
              child: Container(height: 25,width: 50,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Ecompage3()));
                }, child: Text('circle')),
              ),
            )
            ],
        ),
      ),
    );
  }
}

Widget abc(var img, head) {
  return Padding(
    padding: const EdgeInsets.only(left: 10 ,right: 10),
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.white70) ,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.only(left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image(
                image: AssetImage(img),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(head, style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.yellow,
                    ),
                    Text("5.0 (Review)", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Row(
                  children: [
                    Text("20 pieces", style: TextStyle(color: Colors.grey)),
                    Text("\$90",
                        style: TextStyle(
                          color: Colors.purple[400],
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
                Text(
                  "Quantity: 1",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
