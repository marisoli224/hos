import 'package:chat_c7_str/screens/more/technology/medical_teq.dart';
import 'package:chat_c7_str/screens/more/patient/patient_respons.dart';
import 'package:chat_c7_str/screens/more/patient/patient_rights.dart';
import 'package:flutter/material.dart';

class More extends StatelessWidget {
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                            'Medical Teqchnologies',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed(MedicalTech.routeName);
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
                            'Patient Rights',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(PatientRights.routeName);
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
                            'Patient Responsibilities',

                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(PatientResponse.routeName);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 360,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue[100],
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Text("Contact Us For Any Informations",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.red[600]
                            )),
                            SizedBox(height: 20,),
                            Row(children: [
                              Icon((Icons.location_on_sharp),color: Colors.grey,size: 30),
                              Text("Location",style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red
                              )),
                            ],),
                            // Container(
                            //   color: Colors.white60,
                            //   height: 3,
                            // ),
                            Text("""2005 Stokes Isle Apt. 896, Venaville 10010, USA""",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                )),
                            SizedBox(height: 20,),
                            Row(children: [
                              Icon((Icons.person_pin_rounded),color: Colors.grey,size: 30),
                              Text("Email & Phone",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red
                                  ),)
                            ],),
                            // Container(
                            //   color: Colors.white60,
                            //   height: 3,
                            // ),
                            Text("""info@yourdomain.com""",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
                            Text("""(+68) 120034509""",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                )),
                            // Row(children: [
                            //   Icon((Icons.public),color: Colors.grey,size: 30),
                            //   Text("Follow Us",
                            //   style: TextStyle(
                            //       fontSize: 15,
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.red
                            //   )),
                            // ],),
                            // Container(
                            //   color: Colors.white60,
                            //   height: 3,
                            // ),
                            // Row(children: [
                            //   Icon((Icons.facebook),color: Colors.grey,size: 30),
                            //   Icon((Icons.whatsapp_rounded),color: Colors.grey,size: 30),
                            //
                            //
                            // ],),

                          ],
                        ),
                      ),
                    )
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
