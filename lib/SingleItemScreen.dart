import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {
  String imgA;
  int num = 2;
  SingleItemScreen(this.imgA);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(159, 42, 41, 41),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(top: 30, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset("images/4.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "       B E S T   C O F F E E",
                style: TextStyle(color: Colors.grey.withOpacity(0.8)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "   Latte ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 15),
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withOpacity(0.2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '$num',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      "30\$",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              //
              SizedBox(
                height: 20,
              ),
              Text(
                ''' HELLO MY NAME IS YOUSSEF AND I LOVE DRINK COFFEE AND REDDING A LOT , IA'M A STUDENT I I-TECH SCHOOL ''',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "     Volume 80 ml ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 15),
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withOpacity(0.2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: Row(
                      children: [
                        Text(
                          "Add to Cart ",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 23,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.add_circle_outline_outlined,
                          color: Colors.amber,
                        )
                      ],
                    ))
                  ],
                ),
              ),
              //
            ],
          ),
        )),
      ),
    );
  }
}
