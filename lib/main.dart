import 'package:flutter/material.dart';
import 'package:landingscreen/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: LandingPageScreen(
          nextRoute: '/',
          titles: [
            "Private Calling",
            "Cross-platform",
            "Cheap international & local calling rates",
            "Call recording on all numbers",
            "Buy different virtual numbers",
          ],
          descriptions: [
            "Make Private Calls to over 1200 destinations worldwide using Dialr's Secured Communications Network",
            "Enjoy seamless calling experience on Dialr's mobile application and WebApp.",
            "Call anywhere on the globe at cheap calling ratesPrice starts @ ¢2 per min.",
            "Automatic call recordings on all your numbers and can be accessed on mobile or desktop.",
            "Get a Virtual Second Phone Number from USA, Canada & Virgin Islands. No sim required",
          ],
          images: [
            "assests/images/privacy.png",
            "assests/images/desktop.png",
            "assests/images/calling.png",
            "assests/images/Group.png",
            "assests/images/virtual.png"
          ],
        )

        //  home: const lsn(),
        );
  }
}
