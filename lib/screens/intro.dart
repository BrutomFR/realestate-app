import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  final void Function() goToHome;
  Intro(this.goToHome);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            headerImage(size),
            textBody(),
            Container(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 45),
              child: buttonGetStarted(),
            )
          ],
        ),
      ),
    );
  }

  headerImage(Size size) {
    return Container(
      height: size.height * 0.5,
      child: ClipRRect(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70)),
        child: OverflowBox(
          minWidth: 0.0,
          minHeight: 0.0,
          maxWidth: double.infinity,
          child: Image(
              image: AssetImage("img/header-tuto.jpeg"), fit: BoxFit.cover),
        ),
      ),
    );
  }

  textBody() {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Find your",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "sweet home",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Schedule visits in just a few clicks\nvisits in just a few clicks',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  buttonGetStarted() {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 2),
            color: Colors.black.withOpacity(0.3),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: TextButton(
            onPressed: () {
              this.goToHome();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            child: Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            )),
      ),
    );
  }
}
