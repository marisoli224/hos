
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/const_text.dart';

class PatientRights extends StatelessWidget {

  static String routeName = 'patient rights';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              child: Container(
                color: Colors.blue,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .2,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        )),
                    Text(
                      'Patient Rights',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 20, left: 30, right: 30, bottom: 40),
                width: MediaQuery.of(context).size.width * .85,
                height: MediaQuery.of(context).size.height * .80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),

                child: SingleChildScrollView(
                  child: Text(
                    ConstantTexts.PatientRights,
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
