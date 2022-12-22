import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
/*
List<Widget> crd = [];

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int i = 0;

  @override
  void initState() {
    Timer mytimer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        if (i == 4)
          i = 0;
        else
          i = i + 1;
      });
      //mytimer.cancel() //to terminate this timer
    });
    super.initState();
  }

  Widget card(BuildContext context, String imageadd, String heading,
      String Description) {
    return Container(
      margin: EdgeInsets.only(top: 34),
      width: 358,
      height: 482,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              transform: GradientRotation(0.1713913),
              colors: [
                Color.fromARGB(255, 210, 208, 250).withOpacity(1),
                Color.fromARGB(255, 245, 243, 252).withOpacity(1),
                // Colors.white.withOpacity(1),
                Colors.white.withOpacity(1),
                //Color.fromARGB(255, 229, 201, 242).withOpacity(1),
                Color.fromARGB(255, 229, 201, 242).withOpacity(1),
              ]),
          borderRadius: BorderRadius.circular(41)),
      child: Stack(children: [
        Container(
          //width: 79.53,
          // height: 104,
          margin: EdgeInsets.only(left: 27, top: 83),
          child: Image.asset(
            imageadd,
          ),
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
                letterSpacing: 0.1,
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
        //width: 358,
        constraints: BoxConstraints(maxWidth: 358),
        margin: EdgeInsets.only(left: 16, top: 26, right: 16),
        padding:
            EdgeInsets.only(left: 134.5, top: 14, right: 134.5, bottom: 14),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation(0.1713913),
                colors: [
                  Color(0xffC241FF).withOpacity(1),
                  Color(0xff25C3D8).withOpacity(1),
                ]),
            // color: Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          "Get Started",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: .7,
          ),
        ));
  }

  Widget dotindex(BuildContext context) {
    return Container(
        width: 86,
        height: 24,
        margin: EdgeInsets.only(left: 152, top: 1, right: 152, bottom: 59),
        padding: EdgeInsets.only(left: 9, right: 9),
        child: Row(
          children: [
            Text(
              ".",
              style: i == 0
                  ? const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    )
                  : const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              ".",
              style: i == 1
                  ? const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24)
                  : const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              ".",
              style: i == 2
                  ? const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24)
                  : const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              ".",
              style: i == 3
                  ? const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24)
                  : const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              ".",
              style: i == 4
                  ? const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24)
                  : const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
            )
          ],
        ));
  }

  Widget Footnote(BuildContext context, String text) {
    return Container(
        margin: EdgeInsets.only(top: 65, left: 93, right: 92),
        child: RichText(
          text: TextSpan(
            text: 'Have a question? ',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xFFF8E8E93),
              letterSpacing: .7,
            ),
            children: const <TextSpan>[
              TextSpan(
                text: 'Contact us',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFF9C63E5),
                  letterSpacing: .7,
                ),
              ),
            ],
          ),
        )
        // child: Text(
        //   text,
        //   textAlign: TextAlign.center,
        //   style: TextStyle(
        //     fontSize: 13,
        //     fontWeight: FontWeight.w400,
        //     color: Color(0xFFF8E8E93),
        //     letterSpacing: .7,
        //   ),
        // ),
        );
  }

  Widget Footnote1(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.only(left: 98, right: 97, top: 4),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Color(0xFFF8E8E93),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    crd.add(card(context, "assests/images/privacy.png", "Private Calling",
        "Make Private Calls to over 1200 destinations worldwide using Dialr’s Secured Communications Network"));
    crd.add(card(context, "assests/images/desktop.png", "Cross-platform",
        "Enjoy seamless calling experience on Dialr’s mobile application and WebApp."));
    crd.add(card(
        context,
        "assests/images/calling.png",
        "Cheap international  & local calling rates",
        "Call anywhere on the globe at cheap calling ratesPrice starts @ ¢2 per min."));
    crd.add(card(
        context,
        "assests/images/Group.png",
        "Call recording on all numbers",
        "Automatic call recordings on all your numbers and can be accessed on mobile or desktop."));
    crd.add(card(
        context,
        "assests/images/virtual.png",
        "Buy different virtual numbers",
        "Get a Virtual Second Phone Number from USA, Canada & Virgin Islands. No sim required"));
    return Scaffold(
        body: ListView(
      children: [
        Container(
            //constraints: BoxConstraints(maxHeight: 858, maxWidth: 390),
            color: Colors.black,
            child: Column(
              children: [
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(children: []),
                // ),
                crd[i],
                dotindex(context),
                Button(context),
                Footnote(context, "Have a question? Contact us"),
                Footnote1(context, "Terms of use  |  Privacy policy")
              ],
            ))
      ],
    ));
  }
}
*/

class LandingPageScreen extends StatefulWidget {
  // Top-level route name
  static const String routeName = '/landing';

  final List<String> images;
  final List<String> titles;
  final List<String> descriptions;
  final String nextRoute;

  const LandingPageScreen({
    Key? key,
    required this.nextRoute,
    required this.images,
    required this.titles,
    required this.descriptions,
  });

  @override
  State<LandingPageScreen> createState() => _LandingPageScreen();
}

class _LandingPageScreen extends State<LandingPageScreen> {
  int currentCardIndex = 0;
  int pacrin = 0;
  bool reverse = false;
  final List<Widget> cards = [];
  late PageController _pageController;
  Timer? carouselTimer;
  final Duration carouselDuration = const Duration(seconds: 4);

  @override
  void initState() {
    // Prepare list of cards from input parameters
    /* widget.titles.asMap().forEach(
      (key, title) {
        cards.add(
          card(
            context,
            widget.images[key],
            title,
            widget.descriptions[key],
          ),
        );
      },
    );
  */
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: .9);
    // Start carousel timer
    carouselTimer = Timer.periodic(
      carouselDuration,
      (timer) {
        setState(
          () {
            currentCardIndex += 1;
            pacrin += 1;
            currentCardIndex = currentCardIndex % widget.titles.length;
          },
        );
        _pageController.animateToPage(
          //currentCardIndex,
          pacrin,
          duration: Duration(milliseconds: 1000),
          curve: Curves.easeInOutCubic,
        );
      },
    );
    /*WidgetsBinding.instance
        .addPostFrameCallback((_) => widget.titles.asMap().forEach(
              (key, title) {
                cards.add(
                  card(
                    context,
                    widget.images[key],
                    title,
                    widget.descriptions[key],
                  ),
                );
              },
            ));
  */
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget makePage(BuildContext) {
    return Flexible(
      //constraints: BoxConstraints(maxHeight: 400),
      child: Container(
        width: 388,
        child: PageView.builder(
          // itemCount: 5,
          pageSnapping: true,
          controller: _pageController,
          onPageChanged: (key) {
            setState(() {
              pacrin = key;
              // currentCardIndex = key;
            });
          },
          itemBuilder: (context, key) {
            return card(
              context,
              widget.images[key % 5],
              widget.titles[key % 5],
              widget.descriptions[key % 5],
              key,
            );
            //return cards[key % 5];
          },
        ),
      ),
    );
  }

  Widget card(
    BuildContext context,
    String imageadd,
    String heading,
    String description,
    int key,
  ) {
    return Flexible(
        child: Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      width: 358,
      //height: 482,
      decoration: BoxDecoration(
        gradient: key == pacrin
            ? LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation(0.1713913),
                colors: [
                  Color.fromARGB(255, 210, 208, 250).withOpacity(1),
                  Color.fromARGB(255, 245, 243, 252).withOpacity(1),
                  // Colors.white.withOpacity(1),
                  Colors.white.withOpacity(1),
                  //Color.fromARGB(255, 229, 201, 242).withOpacity(1),
                  Color.fromARGB(255, 229, 201, 242).withOpacity(1),
                ],
              )
            : const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation(0.1713913),
                colors: [Colors.grey, Colors.grey]),
        borderRadius: BorderRadius.circular(41),
      ),
      //  child: Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 259, child: Container()),
          Expanded(
            flex: 325,
            child: Container(
              //width: 79.53,
              // height: 104,
              margin: EdgeInsets.only(left: 27),
              //margin: EdgeInsets.only(left: 27, top: 83),
              child: Image.asset(
                imageadd,
              ),
            ),
          ),
          Expanded(flex: 212, child: Container()),
          Expanded(
            flex: 250,
            child: Container(
                margin: const EdgeInsets.only(
                  left: 24,
                  right: 2,
                ),
                //width: 264,
                // height: 34,
                //margin: EdgeInsets.only(left: 24, top: 255),
                child: Text(
                  heading,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textScaleFactor: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'DM_Sans',
                    fontSize: min(
                        28,
                        min(MediaQuery.of(context).size.width / 15,
                            MediaQuery.of(context).size.height / 30)),
                    letterSpacing: 0.1,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                )),
          ),
          Expanded(flex: 100, child: Container()),
          Expanded(
            flex: 325,
            child: Container(
              width: 304,
              margin: EdgeInsets.only(left: 24),
              //  height: 66,
              // margin: EdgeInsets.only(left: 24, top: 321),
              child: Text(
                description,
                textScaleFactor: 1,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'DM_Sans',
                  fontSize: min(
                      17,
                      min(MediaQuery.of(context).size.width / 23,
                          MediaQuery.of(context).size.height / 47)),
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Expanded(flex: 296, child: Container())
        ],
      ),
    ));
  }

  Widget button(BuildContext context) {
    return Container(
      width: 358,
      margin: EdgeInsets.only(left: 16, right: 16),
      padding: EdgeInsets.only(top: 14, bottom: 14),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          transform: GradientRotation(0.1713913),
          colors: [
            Color(0xffC241FF).withOpacity(1),
            Color(0xff25C3D8).withOpacity(1),
          ],
        ),
        // color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          "Get Started",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontFamily: 'DM_Sans',
            fontSize: min(
                14,
                min(MediaQuery.of(context).size.width / 15,
                    MediaQuery.of(context).size.height / 30)),
            letterSpacing: .7,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }

  Widget dotindex(BuildContext context) {
    return Container(
      // width: 86,
      // height: 24,
      // margin: EdgeInsets.only(
      //   left: 152,
      // ),
      // padding: EdgeInsets.only(left: 9, right: 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ".",
            style: currentCardIndex == 0
                ? const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'DM_Sans',
                    fontSize: 24,
                    decoration: TextDecoration.none,
                  )
                : const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DM_Sans',
                    fontSize: 24,
                    decoration: TextDecoration.none,
                  ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            ".",
            style: currentCardIndex == 1
                ? const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'DM_Sans',
                    fontSize: 24,
                    decoration: TextDecoration.none,
                  )
                : const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontFamily: 'DM_Sans',
                    decoration: TextDecoration.none,
                  ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            ".",
            style: currentCardIndex == 2
                ? const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'DM_Sans',
                    fontSize: 24,
                    decoration: TextDecoration.none,
                  )
                : const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DM_Sans',
                    fontSize: 24,
                    decoration: TextDecoration.none,
                  ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            ".",
            style: currentCardIndex == 3
                ? const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    fontFamily: 'DM_Sans',
                    decoration: TextDecoration.none,
                  )
                : const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    decoration: TextDecoration.none,
                  ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            ".",
            style: currentCardIndex == 4
                ? const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'DM_Sans',
                    fontSize: 24,
                    decoration: TextDecoration.none,
                  )
                : const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'DM_Sans',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    decoration: TextDecoration.none,
                  ),
          )
        ],
      ),
    );
  }

  Widget footnote(BuildContext context, String text) {
    return Container(
        // margin: EdgeInsets.only(
        //   top: 65,
        // ),
        child: RichText(
      text: TextSpan(
        text: 'Have a question? ',
        style: TextStyle(
          fontSize: min(
              13,
              min(MediaQuery.of(context).size.width / 20,
                  MediaQuery.of(context).size.height / 50)),
          fontFamily: 'DM_Sans',
          fontWeight: FontWeight.w400,
          color: Color(0xFFF8E8E93),
          letterSpacing: .7,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Contact us',
            style: TextStyle(
              fontSize: min(
                  13,
                  min(MediaQuery.of(context).size.width / 20,
                      MediaQuery.of(context).size.height / 50)),
              fontWeight: FontWeight.w400,
              fontFamily: 'DM_Sans',
              color: Color(0xFFF9C63E5),
              letterSpacing: .7,
            ),
          ),
        ],
      ),
    )
        // child: Text(
        //   text,
        //   textAlign: TextAlign.center,
        //   style: TextStyle(
        //     fontSize: 13,
        //     fontWeight: FontWeight.w400,
        //     color: Color(0xFFF8E8E93),
        //     letterSpacing: .7,
        //   ),
        // ),
        );
  }

  Widget footnote1(BuildContext context, String text) {
    return Container(
      //margin: EdgeInsets.only(top: 4),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: min(
              13,
              min(MediaQuery.of(context).size.width / 20,
                  MediaQuery.of(context).size.height / 50)),
          fontWeight: FontWeight.w400,
          fontFamily: 'DM_Sans',
          color: Color(0xFFF8E8E93),
          decoration: TextDecoration.none,
          letterSpacing: .7,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print(currentCardIndex);
    return SafeArea(
      top: true,
      bottom: true,
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 16,
              child: Column(
                children: [
                  makePage(BuildContext),
                  dotindex(context),
                ],
              ),
            ),
            Expanded(flex: 2, child: Container()),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        widget.nextRoute,
                      );
                    },
                    child: button(context),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 18,
                    child: Column(children: [
                      footnote(context, "Have a question? Contact us"),
                      SizedBox(
                        height: 4,
                      ),
                      footnote1(context, "Terms of use  |  Privacy policy"),
                    ]),
                  ),
                  // Expanded(
                  //   flex: 5,
                  //   child: Container(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
