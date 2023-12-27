import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
              color: Colors.black26.withOpacity(0.4),
              blurRadius: 8,
              spreadRadius: 1),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            color: Colors.orange,
            size: 35,
          ),
          Icon(
            Icons.favorite,
            color: Colors.orange,
            size: 35,
          ),
          Icon(
            Icons.person,
            color: Colors.orange,
            size: 35,
          ),
          Icon(
            Icons.notifications,
            color: Colors.orange,
            size: 35,
          ),
      
        ],
      ),
    );
  }
}
