import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffEFF0F1)),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 320,
                color: Color(0xff42B0FE),
              ),
            ],
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(
              top: 50,
              left: 30,
              right: 30,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Find Muslim Ivent",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "United States",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    InkWell(
                      splashColor: Colors.amber,
                      onTap: () {},
                      child: Image.asset('images/lonceng.png'),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  // height: 20,

                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      // prefixIcon: Widget1,
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Search All Event...",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Popular Event",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 100,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x22000000),
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: const Offset(0, 15),
                      ), //BoxShadow
                    ],
                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: Image.asset("images/popular1.png"),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 100,
                              child: Text(
                                "Blue MOsque Fest / 24 March",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Image.asset("images/map_marker.png"),
                              SizedBox(width: 10),
                              Text(
                                "Turki, Instanbul",
                                style: TextStyle(color: Color(0xff97999B)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "New Event",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 100,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: Image.asset(
                          "images/news2.png",
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 100,
                                  child: Text(
                                    "Festival Hallal Food Outhdor",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Image.asset("images/map_marker.png"),
                                  SizedBox(width: 10),
                                  Text(
                                    "Turki, Instanbul",
                                    style: TextStyle(color: Color(0xff97999B)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                bottom: 10, left: 20, right: 20, top: 10),
                            decoration: BoxDecoration(
                                color: Color(0xff42B0FE),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Date :",
                                    style: TextStyle(color: Color(0x88ffffff))),
                                SizedBox(height: 5),
                                Text("May 19,2022",
                                    style: TextStyle(color: Color(0xffffffff))),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
