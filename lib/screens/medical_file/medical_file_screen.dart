import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicalFile extends StatefulWidget {
  static String routeName ='medical file';

  @override
  State<MedicalFile> createState() => _MedicalFileState();
}

class _MedicalFileState extends State<MedicalFile> {
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
              top: 10,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 20, left: 30, right: 30, bottom: 40),
                width: MediaQuery.of(context).size.width * .85,
                height: MediaQuery.of(context).size.height * .80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.person_pin,size: 80,color: Colors.blue),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Container(
                        width: 360,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Laboratory Results',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                      //  Navigator.of(context).pushNamed(MedicalTech.routeName);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Container(
                        width: 360,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Radiology Reports',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                       // Navigator.of(context).pushNamed(PatientRights.routeName);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Container(
                        width: 360,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Inpatient Admission',

                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                      //  Navigator.of(context).pushNamed(PatientResponse.routeName);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Container(
                        width: 360,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Outpatient Visits',

                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        //  Navigator.of(context).pushNamed(PatientResponse.routeName);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Container(
                        width: 360,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Emergency Unit Visits',

                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        //  Navigator.of(context).pushNamed(PatientResponse.routeName);
                      },
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
