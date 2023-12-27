import 'package:dear_pprogrammer/Sign_up.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  double getSmalldiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigdiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 224, 224),
      body: Stack(
        children: [
          Positioned(
            right: -getSmalldiameter(context) / 3,
            top: -getSmalldiameter(context) / 3,
            child: Container(
              width: getSmalldiameter(context),
              height: getSmalldiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 175, 37, 145),
                  Color.fromARGB(255, 229, 140, 171)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
            ),
          ),
          Positioned(
            left: -getBigdiameter(context) / 4,
            top: -getBigdiameter(context) / 4,
            child: Container(
              width: getBigdiameter(context),
              height: getBigdiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 224, 98, 172),
                  Color.fromARGB(255, 216, 18, 150)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Center(
                  child: Text(
                "         Youssef App",
                style: TextStyle(
                    fontFamily: "Pacifico", fontSize: 30, color: Colors.white),
              )),
            ),
          ),
          Positioned(
            right: -getBigdiameter(context) / 2,
            bottom: -getBigdiameter(context) / 2,
            child: Container(
              width: getBigdiameter(context),
              height: getBigdiameter(context),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade100)),
                        icon: Icon(Icons.email),
                        labelText: "Email ",
                        enabledBorder: InputBorder.none,
                        labelStyle: TextStyle(color: Colors.grey),
                        iconColor: Colors.pink),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade100)),
                        icon: Icon(Icons.key),
                        labelText: "Password ",
                        enabledBorder: InputBorder.none,
                        labelStyle: TextStyle(color: Colors.grey),
                        iconColor: Colors.pink),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 20, 10),
                    child: Text(
                      "FORGET PASSWORD ? ",
                      style: TextStyle(color: Colors.pink, fontSize: 12),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 175, 37, 145),
                      Color.fromARGB(255, 229, 140, 171)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  margin: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.amber,
                      child: Center(
                        child: Text(
                          "SIGN IN ",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "DONT'T HAVE AN ACCOUNT ?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => signUpScreen()));
                      },
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.amber,
                        child: Center(
                          child: Text(
                            "SIGN UP ",
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
