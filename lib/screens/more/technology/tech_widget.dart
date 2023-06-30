
import 'package:chat_c7_str/screens/more/technology/tech_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/my_tech.dart';

class TechCard extends StatelessWidget {

  MyTechnology technology;


  TechCard(this.technology);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all(10),
         padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            border: Border.all(color: Colors.white)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              technology.image,
              height: 80,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                technology.name,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
      onTap: (){
        Navigator.pushNamed(context,TechDetails.routeName,arguments: technology);
      },
    );
  }
}