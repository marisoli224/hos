
import 'package:chat_c7_str/screens/more/technology/tech_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/const_text.dart';
import '../../../models/my_tech.dart';

class MedicalTech extends StatelessWidget {
  static String routeName = 'medical technologies';
  List<TechCard> technology = [
   // TechCard(MyTechnology(image: "assets/images/3D Imaging and Navigation System.png", name: "Imaging and Navigation System", description: ConstantTexts.ImagingandNavigationSystem)),
  //  TechCard(MyTechnology(image: 'assets/images/4d Ultrasound.png', name: '4d Ultrasound', description:ConstantTexts.Ultrasound)),
    TechCard(MyTechnology(image: "assets/images/Angiography.png", name: "Angiography", description: ConstantTexts.Angiography)),
    TechCard(MyTechnology(image: 'assets/images/CT.png', name: 'CT', description:ConstantTexts.Ultrasound)),
    TechCard(MyTechnology(image: "assets/images/Digital C-Arm.png", name: "Digital C-Arm.png", description: ConstantTexts.DigitalC_Arm)),
   // TechCard(MyTechnology(image: 'assets/images/Digital Mammography.png', name: 'Digital Mammography', description:ConstantTexts.DigitalMammography)),
    TechCard(MyTechnology(image: "assets/images/Electrophisiolgy.png", name: "Electrophisiolgy", description: ConstantTexts.Electrophisiolgy)),
   // TechCard(MyTechnology(image: 'assets/images/Endoscopic Ultrasound.png', name: 'Endoscopic Ultrasound', description:ConstantTexts.EndoscopicUltrasound)),
    TechCard(MyTechnology(image: "assets/images/MRI.png", name: "MRI", description: ConstantTexts.MRI)),
    TechCard(MyTechnology(image: 'assets/images/Robotic Surgery.jpg', name: 'Robotic Surgery', description:ConstantTexts.RoboticSurgery)),
    TechCard(MyTechnology(image: "assets/images/Single Dose Radiotherapy.png", name: "Single Dose Radiotherapy", description: ConstantTexts.SingleDoseRadiotherapy)),
    TechCard(MyTechnology(image: 'assets/images/True Beam LINAC.png', name: 'True Beam LINAC', description:ConstantTexts.TrueBeamLINAC)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Medical Technologies"),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.green[100],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: technology.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           //   childAspectRatio: 8.0 / 10.0,
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return technology[index];
            },
          ),
        ));
  }
}
