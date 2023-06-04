import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffEFF0F1)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 50,
                bottom: 20,
                left: 30,
                right: 30,
              ),
              decoration: BoxDecoration(
                color: Color(0xff42B0FE),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("images/left_btn.png"),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Image.asset("images/iconsetings.png"),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xff42B0FE),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(90, 90)),
                          child: Image.asset('images/picme.jpg', width: 60)),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Si Max",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text("+628946344444",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                  Container(
                    child: Text("Switch",
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                "My Ticket",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 120,
                    // padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: Color(0xff42B0FF),
                    ),
                    child: Image.asset("images/myticket1.png"),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Premium Price",
                        style: TextStyle(color: Color(0xff42B0FE)),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 100,
                        child: Flexible(
                          child: Text(
                            "Hallal Food Fest / 22 March",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "8 Spot Left",
                        style: TextStyle(color: Color(0xff97999B)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Good Service",
                        style: TextStyle(color: Color(0xff97999B)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Premium ",
                        style: TextStyle(color: Color(0xff97999B)),
                      ),
                      SizedBox(height: 10),
                      Image.asset("images/myticket_time.png"),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                "History",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(90, 90)),
                          child:
                              Image.asset('images/keranjang.png', width: 60)),
                      SizedBox(width: 20),
                      Text("Order History",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(width: 20),
                    ],
                  ),
                  Image.asset("images/right_btn.png"),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
