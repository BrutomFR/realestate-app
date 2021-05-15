import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:realestate/screens/Pages/details_home.dart';
import 'package:realestate/widgets/TextIcon.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                topBar(),
                SizedBox(
                  height: 20,
                ),
                textField(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: cardAction("Buy a Home", "img/house1.jpeg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: cardAction("Rent a Home", "img/house2.jpeg"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                suggestHomeBar(),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    cardHome(context),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  topBar() {
    return Container(
        child: Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Location",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Canada",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 12,
                      width: 12,
                      child: SvgPicture.asset(
                        "img/arrow-down.svg",
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: SizedBox(
              height: 60,
              width: 60,
              child: SvgPicture.asset("img/profile.svg"),
            ),
          ),
        ],
      ),
    ));
  }

  textField() {
    return Container(
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(0, 20, 20, 20),
                    hintText: "Search adress, city, location",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings_input_component_rounded),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  cardAction(String value, String linkImage) {
    return Container(
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              spreadRadius: 3,
              blurRadius: 15,
              offset: Offset(0, 5),
              color: Colors.black.withOpacity(0.07),
            )
          ]),
      child: Container(
        child: Column(
          children: [
            Container(
              height: 135,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  height: 135,
                  width: double.infinity,
                  image: AssetImage(linkImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 50,
              child: Center(
                child: Text(
                  value,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  suggestHomeBar() {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Container(
        width: double.infinity,
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          isScrollable: true,
          tabs: [
            Tab(
              text: "Popular",
            ),
            Tab(
              text: "Recommended",
            ),
            Tab(
              text: "Nearest",
            ),
          ],
        ),
      ),
    );
  }

  cardHome(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsHome()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(17),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                spreadRadius: 3,
                blurRadius: 15,
                offset: Offset(0, 5),
                color: Colors.black.withOpacity(0.07),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                height: 135,
                width: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage("img/house3.jpeg"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Central Edmon",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
                Text(
                  r"$15,000,000",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.blue.shade600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "118 Street, West Edmonton, Alberta",
              style: TextStyle(
                color: Colors.black54,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                TextIcon(
                  icon: Icon(Icons.king_bed),
                  text: Text(
                    "3",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  labelStart: false,
                ),
                SizedBox(
                  width: 10,
                ),
                TextIcon(
                  icon: Icon(Icons.bathtub),
                  text: Text(
                    "2",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  labelStart: false,
                ),
                SizedBox(
                  width: 10,
                ),
                TextIcon(
                  icon: Icon(Icons.square_foot),
                  text: Text(
                    "100m",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  labelStart: false,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
