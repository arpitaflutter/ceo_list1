import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List photo = [
    "assets/images/image1.jpg",
    "assets/images/image2.webp",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
    "assets/images/image5.webp",
    "assets/images/image6.jpg",
    "assets/images/image7.jpg",
    "assets/images/image8.jpg",
    "assets/images/image9.jpg",
    "assets/images/image10.jpg",
  ];

  List name = [
    "Sundar Pichai",
    "Bill Gates",
    "Jeff Bezoz",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayen",
    "Daniel Zhang",
    "Harald Kruger",
    "Micheil Dell",
    "Bob Swan",
  ];

  List Com = [
    "GOOGLE",
    "MICROSOFT",
    "AMAZONE",
    "RELIENCE.LTD",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "DELL",
    "INTEL"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text("CEO of MNC's",style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.lightBlue,
                  Colors.blueAccent,
                  Colors.blue,
                  Colors.deepPurple,
                ],
              )
          ),
          child: SingleChildScrollView(
            child: Column(
              children: photo
                        .asMap()
                        .entries
                        .map((e) => cont(photo[e.key],name[e.key],Com[e.key],e.key % 2 == 0? Colors.blue.shade900:Colors.lightBlueAccent,e.key%2==0?Colors.white:Colors.black))
                        .toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget cont(String img,String Nm,String Co,Color c1,Color c2)
  {
    return Container(
      margin: EdgeInsets.all(15),
      height: 80,width: double.infinity,
      decoration: BoxDecoration(
        color: c1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 50,width: 50,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(50),
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("$img"),
              ),
            ),
            SizedBox(width: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$Nm",style: TextStyle(color: c2,fontSize: 20),),
                Text("$Co",style: TextStyle(color: c2,fontSize: 13),),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.chevron_right_sharp,color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }

}
