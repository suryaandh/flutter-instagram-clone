import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/layout/mobile_layout.dart';
import 'package:flutter_instagram_clone/layout/responsive_layout.dart';
import 'package:flutter_instagram_clone/layout/web_layout.dart';
import 'package:flutter_instagram_clone/screen/login_screen.dart';
import 'package:flutter_instagram_clone/screen/signup_screen.dart';
import 'package:flutter_instagram_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyCm929doJlRRTXqaDkkm1M9LBjiDYKsr_Q',
          appId: '1:857734343689:web:19444f9b8a67b4d8859cd8',
          messagingSenderId: '857734343689',
          projectId: 'instagram-clone-57373',
          storageBucket: 'instagram-clone-57373.appspot.com'),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: ResponsiveLayout(
      //   webScreenLayout: WebLayout(),
      //   mobileScreenLayout: MobileLayout(),
      // ),
      home: SignUpScreen(),
    );
  }
}
