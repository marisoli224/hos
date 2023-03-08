

import 'my_doctor.dart';
import 'my_user.dart';

class MyAppointment {
  static const String COLLECTION_NAME = "Appointments";

  String id;
  String date ;
  String day ;
  String time ;
  String doctorId ;
  String userId;
  bool  isDone = false;


  MyAppointment(
      { this.id = '',
        required this.date,
        required this.day,
        required this.time,
        required this.doctorId,
        required this.userId,
        required this.isDone
       });

  MyAppointment.fromJson(Map<String, dynamic> json)
      : this(
    id: json['id'],
    date: json['date'],
    day: json['day'],
    time: json['time'],
    doctorId: json['doctorId'],
    userId: json['userId'],
    isDone: json['isDone']

  );

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "date": date,
      "day" : day,
      "time": time,
      "doctorId":doctorId,
      "userId":userId,
      "isDone":isDone
    };
  }
}