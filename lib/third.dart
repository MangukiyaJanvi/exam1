import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person_pin,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Name",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Box("Sneakers"),
                        Box("Perfume"),
                      ],
                    ),
                    Row(
                      children: [
                        Box("Sneakers"),
                        Box("Perfume"),
                      ],
                    ),
                    Row(
                      children: [
                        Box("Sneakers"),
                        Box("Perfume"),
                      ],
                    ),
                    Row(
                      children: [
                        Box("Sneakers"),
                        Box("Perfume"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.storefront,color: Colors.black12,size: 30,),
                      Icon(Icons.shopping_bag,color: Colors.black12,size: 30,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Third(),));
                          },
                          child: Icon(Icons.person_pin,color: Colors.yellow.shade300,size: 30,)),
                      Icon(Icons.settings,color: Colors.black12,size: 30,),
                      Icon(Icons.password,color: Colors.black12,size: 30,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget Box(String data)
  {
    return Expanded(
      child: Container(
        height: 100,
        width: 100,
        child: Column(
          children: [
            Icon(Icons.image,color: Colors.black12,size: 50,),
            Text(data),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("\$45",style: TextStyle(color: Colors.pink),),
                SizedBox(width: 5,),
                Text("\$79"),
              ],
            ),
            Expanded(
              child: Container(
                height: 10,
                width: 100,
                alignment: Alignment.center,
                color: Colors.amberAccent,
                child: Text("Buy",style: TextStyle(color: Colors.black),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
