import 'package:chat_c7_str/providers/my_provider.dart';
import 'package:chat_c7_str/screens/add_room/add_room_screen.dart';
import 'package:chat_c7_str/screens/chat/chat_screen.dart';
import 'package:chat_c7_str/screens/create_account/create_account.dart';
import 'package:chat_c7_str/screens/home/home_screen.dart';
import 'package:chat_c7_str/screens/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      initialRoute: provider.firebaseUser != null
          ? HomeScreen.routeName
          : LoginScreen.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
        CreateAccountScreen.routeName: (context) => CreateAccountScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (c) => HomeScreen(),
        ChatScreen.routeName: (c) => ChatScreen(),
        AddRoomScreen.routeName: (c) => AddRoomScreen()
      },
    );
  }
}
