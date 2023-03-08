import 'package:chat_c7_str/constants/doc_list.dart';
import 'package:chat_c7_str/database_utils/database_utils.dart';
import 'package:chat_c7_str/screens/appointement/booking_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/my_appointement.dart';
import '../../models/my_doctor.dart';
import 'date_widget.dart';

class AppointmentCard extends StatefulWidget {
  MyAppointment appointment;

  AppointmentCard({
    required this.appointment,
  });

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(getCurrentDoc()?.image ?? ''),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        getCurrentDoc()?.name ?? '',
                        style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        getCurrentDoc()?.category ?? '',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              DateCard(
                appointment: widget.appointment,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                         backgroundColor: widget.appointment.isDone?
                         MaterialStateProperty.all(Colors.green)
                             : MaterialStateProperty.all(Colors.blue),
                      ),
                      child:
                          Text('Done', style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        DataBaseUtils.editIsDone(widget.appointment);
                       // widget.appointment.isDone = !widget.appointment.isDone;
                        setState(() {

                        });

                      },
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all(Colors.red),),
                      child: Text('Delete'),
                      onPressed: () => {
                            deleteAppointment()

                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  getCurrentDoc() {
    var doctor =
        doctors.where((element) => element.id == widget.appointment.doctorId).toList();

    return doctor[0];
  }

  deleteAppointment() {
    DataBaseUtils.deleteAppointment(widget.appointment).timeout(const Duration(seconds: 1),
        onTimeout: () {
      print ("hello");
    }
  );
  }
  }

