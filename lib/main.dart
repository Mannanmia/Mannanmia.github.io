import 'package:flutter/material.dart';
import 'responsivelayout.dart';
import 'resume.dart';
import 'portfolio.dart';
import 'dart:js' as js;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter portfolio',
            home: new MyHomePage(),
          );

  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController ? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 1);
  }

  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: ResponsiveLayout.isSmallScreen(context)
          ? Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text("nayeemrahman62662@gmail.com"),
                accountName: Text("Md Mannan Hossain Nayeem"),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.ibb.co/G53VhHh/profile-pic-river.jpg"),
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://miro.medium.com/max/1200/1*l3wujEgEKOecwVzf_dqVrQ.jpeg"),
                        fit: BoxFit.fill)),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Icon(Icons.home),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text("Home"),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Icon(Icons.verified_user),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text("Work"),
                    )
                  ],
                ),
                onTap: () {
                  js.context.callMethod("open", [
                    "https://github.com/Mannanmia"
                  ]);
                },
              ),
            ],
          ))
          : null,
      appBar: ResponsiveLayout.isSmallScreen(context)
          ? AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        title: Text(
          "Welcome",
          style: TextStyle(color: Colors.black),
        ),
      )
          : null,
      body: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  padding: EdgeInsets.only(top: height*.01, left: width*.07),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Md Mannan Hossain Nayeem",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text("Flutter Developer"),
                    ],
                  ),
                ),
                ResponsiveLayout.isSmallScreen(context)
                    ? SizedBox(
                  width: width*.2,
                )
                    : SizedBox(
                  width: MediaQuery.of(context).size.width / 2.3,
                ),
                ResponsiveLayout.isSmallScreen(context)
                    ? Container()
                    : TabBar(
                  controller: tabController,
                  indicatorColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey.withOpacity(0.6),
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(
                      child: Text("About Me",
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(
                  width: width*0.035,
                ),
                ResponsiveLayout.isSmallScreen(context)
                    ? Container()
                    : Container(
                  height: 60.0,
                  width: 125.0,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                     // elevation: 0.0,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Resume()));
                      },
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Center(
                        child: Text("Resume",style: TextStyle(
                            color: Colors.black,
                            fontWeight:FontWeight.bold,
                        ),),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),

              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          ResponsiveLayout.isSmallScreen(context)
              ? Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 350,
                  width: 350,
                  child: ClipOval(
                    child: Image.network(
                      "https://i.ibb.co/G53VhHh/profile-pic-river.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Container(
                      width: width,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:  EdgeInsets.only(
                              left: width*.07,
                                top: 10),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "HI IM ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: width*0.055,
                                      color: Colors.yellow[600]),
                                ),
                                Text(
                                  "Md Mannan Hossain Nayeem",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    fontSize: width*0.055,),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height*.01,
                          ),
                          Center(
                            child: Text(
                              "FLUTTER DEVELOPER",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              "---------------------------------------------------------------------------------"),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                             EdgeInsets.only(left: width*.22, top: 0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "A Young ",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  "Flutter Developer ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "with",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(left: width*.15, top: 0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Skills for mobile, web and desktop",
                                  style: TextStyle(fontSize: 23),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Social networks",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    js.context.callMethod("open", [
                                      "https://www.instagram.com/mannan_ig_/"
                                    ]);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Image.network(
                                        "https://i.ibb.co/cN0d6rg/instagram-Logo.jpg"),
                                  ),
                                ),
                                // SizedBox(
                                //   width: 30.0,
                                // ),
                                InkWell(
                                  onTap: () {
                                    js.context.callMethod("open", [
                                      "https://www.facebook.com/abdulmannan.mia.56/"
                                    ]);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Image.network(
                                        "https://i.ibb.co/KsBvw62/facebook-logo.png"),
                                  ),
                                ),
                                // SizedBox(
                                //   width: 30.0,
                                // ),
                                InkWell(
                                  onTap: () {
                                    js.context.callMethod("open",
                                        ["https://github.com/Mannanmia"]);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Image.network(
                                        "https://i.ibb.co/cNv36FG/github.png"),
                                  ),
                                ),
                                // SizedBox(
                                //   width: 30.0,
                                // ),
                                InkWell(
                                  onTap: () {
                                    js.context.callMethod("open", [
                                      "https://www.linkedin.com/in/md-mannan-miah-a8b43816a/"
                                    ]);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Image.network(
                                        "https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png"),
                                  ),
                                ),
                                // SizedBox(
                                //   width: 30.0,
                                // ),
                                InkWell(
                                  onTap: () {
                                    _ackAlert(context);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Image.network(
                                        "https://i.ibb.co/94r6hRZ/gmail-logo.png"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(

                          padding: EdgeInsets.only(
                              left: 30.0,
                              right: 30.0,
                              top: 10,
                              bottom: 10),
                                child: ElevatedButton(
                                style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow,
                                  shape:RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(30.0),
                ),
                                            ),

                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Resume()));
                                  },
                                  child: Text(
                                    "Resume",
                                    style: TextStyle(fontSize: 20,color: Colors.black),
                                  ),
                                ),
                              ),
                              Padding(
                              padding: EdgeInsets.only(
                              left: 30.0,
                              right: 30.0,
                              top: 10,
                              bottom: 10),
                                child: ElevatedButton(
                                 style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellow[600],
                                        shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30.0),
                                        ),
                                     ),
                                    onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PortFolio()));
                                  },
                                  child: Text(
                                    "Why Flutter",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                            padding: EdgeInsets.only(
                                      left: 30.0,
                                      right: 30.0,
                                      top: 10,
                                      bottom: 10),
                                child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.yellow[600],
                                    shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(30.0),
                                    ),
                                    ),
                                  onPressed: () {
                                    js.context.callMethod("open",
                                        ["https://github.com/Mannanmia"]);
                                  },
                                  child: Text(
                                    "Projects",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                              ),
                              Padding(
                              padding: EdgeInsets.only(
                              left: 30.0,
                                  right: 30.0,
                                  top: 10,
                                  bottom: 10),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(30.0),
                                  ),),
                                  onPressed: () {
                                    _ackAlert(context);
                                  },
                                  child: Text(
                                    "Hire Me",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                            padding: EdgeInsets.only(
                                          left: 30.0,
                                          right: 30.0,
                                          top: 10,
                                          bottom: 10),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(30.0),
                                  ),),

                                  onPressed: () {
                                    js.context.callMethod("open", [
                                      "https://github.com/Mannanmia"
                                    ]);
                                  },
                                  child: Text(
                                    "Work",
                                    style: TextStyle(fontSize: 20,color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
              : Padding(
            padding: EdgeInsets.only(left: width*.017, top: 50.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: height*.6,
                    width: width*.28,
                    child: ClipOval(
                      child: Image.network(
                        "https://i.ibb.co/G53VhHh/profile-pic-river.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: width*.6,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "HI IM ",
                                style: TextStyle(
                                    fontSize: width*.03,
                                    color: Colors.yellow[600]),
                              ),
                              Text(
                                "Md Mannan Hossain Nayeem",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width*.03),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height*.02,
                          ),
                          Text(
                            "FLUTTER DEVELOPER",
                            style: TextStyle(
                                fontSize: width*.016,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              "---------------------------------------------------------------------------------"),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: width*.2),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "A Young ",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  "Flutter Developer ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "with",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Skills for mobile, web and desktop",
                            style: TextStyle(fontSize: 23),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Social networks",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    js.context.callMethod("open", [
                                      "https://www.instagram.com/mannan_ig_/"
                                    ]);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Image.network(
                                        "https://i.ibb.co/cN0d6rg/instagram-Logo.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                InkWell(
                                  onTap: () {
                                    js.context.callMethod("open", [
                                      "https://www.facebook.com/abdulmannan.mia.56/"
                                    ]);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Image.network(
                                        "https://i.ibb.co/KsBvw62/facebook-logo.png"),
                                  ),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                InkWell(
                                  onTap: () {
                                    js.context.callMethod("open", [
                                      "https://github.com/Mannanmia"
                                    ]);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Image.network(
                                        "https://i.ibb.co/cNv36FG/github.png"),
                                  ),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                InkWell(
                                  onTap: () {
                                    js.context.callMethod("open", [
                                      "https://www.linkedin.com/in/md-mannan-miah-a8b43816a/"
                                    ]);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Image.network(
                                        "https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png"),
                                  ),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                InkWell(
                                  onTap: () {
                                    _ackAlert(context);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Image.network(
                                        "https://i.ibb.co/94r6hRZ/gmail-logo.png"),
                                  ),
                                ),
                                SizedBox(
                                  width: width*.01,
                                ),
                              ],
                            ),
                          ),

                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                            padding: EdgeInsets.only(
                                  left: width*.01,
                                  right: width*.01,
                                  top: 10,
                                  bottom: 10),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.yellowAccent,
                                    shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(30.0),
                                    ),),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PortFolio()));
                                  },
                                  child: Text(
                                    "Why Flutter?",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                              Padding(
                                    padding: EdgeInsets.only(
                                    left:width*.01,
                                    right:width*.01,
                                    top: 10,
                                    bottom: 10),
                                child: ElevatedButton(
                                 style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(30.0),
                                  ),
                                  backgroundColor: Colors.yellowAccent,),
                                  onPressed: () {
                                    js.context.callMethod("open", [
                                      "https://github.com/Mannanmia"
                                    ]);
                                  },
                                  child: Text(
                                    "Work",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                  left:width*.01,
                                  right: width*.01,
                                  top: 10,
                                  bottom: 10),
                                child: ElevatedButton(
                                   style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow,

                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(30.0),
                                  ),),
                                  onPressed: () {
                                    js.context.callMethod("open", [
                                      "https://github.com/Mannanmia"
                                    ]);
                                  },
                                  child: Text(
                                    "Projects",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                left: width*.01,
                                right: width*.01,
                                top: 10,
                                bottom: 10),
                                child: ElevatedButton(
                                 style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(30.0),
                                  ),),
                                  onPressed: () {
                                    _ackAlert(context);
                                  },
                                  child: Text(
                                    "Hire Me",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width*.01,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Column(
              children: <Widget>[
                Text(
                  "Created by ->",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: height*.02,
                      color: Colors.black12),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.code,
                      color: Colors.yellowAccent,
                    ),
                    Text(
                      " Md Mannan Hossain Nayeem ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          color: Colors.black12),
                    ),
                    Icon(
                      Icons.code,
                      color: Colors.yellowAccent,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _ackAlert(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(' Please '),
        content: const Text(
            ' Drop your mail at \n nayeemrahman62662@gmail.com'),
        actions: <Widget>[
          TextButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text('WhatsApp Me'),
            onPressed: () {
              js.context.callMethod("open", [
                "https://api.whatsapp.com/send?phone=8801853668678"
              ]);
            },
          ),
        ],
      );
    },
  );
}