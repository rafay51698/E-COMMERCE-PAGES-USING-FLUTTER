import 'package:flutter/material.dart';

class Ecompage3 extends StatefulWidget {
  @override
  _Ecompage3State createState() => _Ecompage3State();
}

class _Ecompage3State extends State<Ecompage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          title: Text("Ecom App UI",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
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
        body: SingleChildScrollView(child: 
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200],
                ),
                height: 60,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Search'), Icon(Icons.search)],
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  child: Text('History'),
                ),
                tile('assets/iphone12.jpg', "Iphone12"),
                tile('assets/note.jpg', "Note 20 Ultra"),
                tile('assets/mb.jpg', " Macbook Air"),
                tile('assets/mbpro.jpg', " Macbook Pro "),
                tile('assets/pc.jpg', " Gaming PC"),
                tile('assets/kb.jpg', " Backlit Keyboard"),
                tile('assets/mercedes.jpg', " Mercedes"),
                tile('assets/mutton.jpg', " Mutton"),
                tile('assets/roadster.jpg', " Roadster"),
                tile('assets/royalfield.jpg', " Royal Field"),
              ],
            ),
          ],
        ),),);
  }
}

Widget tile (var img,head,) {
  return ListTile(
    leading: CircleAvatar(backgroundImage: AssetImage(img)),
    title: Text(
      head,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
        ),
        Text(
          '5.0 (23 Reviews)',
          //style: TextStyle(fontSize: 12),
        ),
      ],
    ),
    trailing: Text('\$10'),
  );
}
