import 'package:flutter/material.dart';
import 'package:realestate/widgets/ButtonTextRadius.dart';
import 'package:realestate/widgets/TextIcon.dart';

class DetailsHome extends StatelessWidget {
  const DetailsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              children: [
                topBar(context, size),
                SizedBox(
                  height: 40,
                ),
                houseInfos(),
                SizedBox(
                  height: 25,
                ),
                sliderImages(size),
                SizedBox(
                  height: 20,
                ),
                callToAction(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  topBar(BuildContext context, Size size) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            "img/house3.jpeg",
          ),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: 3,
            blurRadius: 15,
            offset: Offset(0, 5),
            color: Colors.black.withOpacity(0.16),
          )
        ],
      ),
      height: size.height * 0.45,
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red.shade700,
                    size: 15,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                width: 150,
              ),
              Positioned(
                child: ButtonTextRadius(
                  onTap: () {},
                  height: 45,
                  colorButton: Colors.white,
                  colorText: Colors.black,
                  border: BorderRadius.circular(15),
                  text: Text("Virtual tour"),
                ),
                right: 0,
                left: 0,
                bottom: -23,
              ),
            ],
          ),
        ],
      ),
    );
  }

  houseInfos() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Central Edmon",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade600,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      '4.8',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('155 ratings')
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text('118 Street, West Edmonton, Alberta',
              style: TextStyle(
                color: Colors.black54,
              )),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              TextIcon(
                icon: Icon(Icons.king_bed),
                text: Text(
                  "2 Beds",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              TextIcon(
                icon: Icon(Icons.bathtub),
                text: Text(
                  "2 Baths",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              TextIcon(
                icon: Icon(Icons.square_foot),
                text: Text(
                  "100m area",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "This building is located in the Oliver area, within walking distance of shops...",
            style: TextStyle(
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }

  sliderImages(Size size) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * 0.28,
            height: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: AssetImage("img/house6.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: size.width * 0.28,
            height: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: AssetImage("img/house5.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: size.width * 0.28,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("img/house4.jpeg"),
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.4),
                  BlendMode.luminosity,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                "+5",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  callToAction() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
      ),
      padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                r"$15,000,000",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: Colors.blue.shade600,
                ),
              ),
              Text(
                "Total Price",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          Container(
            height: double.infinity,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: TextButton(
                onPressed: () {},
                child: Text("BOOK NOW"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
