import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  Widget card(BuildContext context, String imageadd, String heading,
      String Description) {
    return Container(
      width: 358,
      height: 482,
      decoration: BoxDecoration(
          color: Colors.lightBlue, borderRadius: BorderRadius.circular(41)),
      child: Stack(children: [
        Container(
          width: 79.53,
          height: 104,
          margin: EdgeInsets.only(left: 27, top: 83),
          child: Image.asset(imageadd),
        ),
        Container(
            width: 264,
            height: 34,
            margin: EdgeInsets.only(left: 24, top: 255),
            child: Text(
              heading,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 28,
                letterSpacing: 0.36,
              ),
            )),
        Container(
            width: 304,
            height: 66,
            margin: EdgeInsets.only(left: 24, top: 321),
            child: Text(
              Description,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ))
      ]),
    );
  }

  Widget Button(BuildContext context) {
    return Container(
        width: 358,
        margin: EdgeInsets.only(left: 16, top: 115, right: 16),
        padding:
            EdgeInsets.only(left: 134.5, top: 14, right: 134.5, bottom: 14),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(14)),
        child: Text(
          "Get Started",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ));
  }

  Widget Footnote(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.only(top: 65, left: 93, right: 93),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget Footnote1(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.only(left: 93, right: 93),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            card(context, "assests/images/privacy.jpg", "Private Calling",
                "Make Private Calls to over 1200 destinations worldwide using Dialr’s Secured Communications Network"),
            card(context, "assests/images/desktop.jpg", "Cross-platform",
                "Enjoy seamless calling experience on Dialr’s mobile application and WebApp."),
            card(
                context,
                "assests/images/calling.jpg",
                "Cheap international  & local calling rates",
                "Call anywhere on the globe at cheap calling ratesPrice starts @ ¢2 per min."),
            card(
                context,
                "assests/images/Group.jpg",
                "Call recording on all numbers",
                "Automatic call recordings on all your numbers and can be accessed on mobile or desktop."),
            card(
                context,
                "assests/images/virtual.jpg",
                "Buy different virtual numbers",
                "Get a Virtual Second Phone Number from USA, Canada & Virgin Islands. No sim required")
          ]),
        ),
        Button(context),
        Footnote(context, "Have a question? Contact us"),
        Footnote1(context, "Terms of use  |  Privacy policy")
      ],
    ));
  }
}
