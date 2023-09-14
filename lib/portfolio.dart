import 'package:flutter/material.dart';
import 'responsivelayout.dart';

class PortFolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "PortFolio",
          style: TextStyle(color: Colors.yellow),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ResponsiveLayout.isSmallScreen(context)
              ? Column(
                  children: <Widget>[
                    smallCard(
                        context,
                        "https://i.ibb.co/kHS9C2F/CM-Android-dev-Flutter-FB.png",
                        "Android App With Flutter",
                        "Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source."),
                    smallCard(
                        context,
                        "https://miro.medium.com/max/1200/1*VkFBn6nB2CgX2L2H_juz3A.png",
                        "iOS App With Flutter",
                        "Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source."),
                    smallCard(
                        context,
                        "https://i.ibb.co/gP7tbt8/CM-Flutter-web-desktop.png",
                        "Web App With Flutter(Preview)",
                        "Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source."),
                    smallCard(
                        context,
                        "https://i.ibb.co/ySv0zqV/Flutter-Desktop-Application.png",
                        "Desktop App With Flutter(Preview)",
                        "Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.")
                  ],
                )
              : Container(
                  child: Column(
                    children: <Widget>[
                      bigCard(
                          context,
                          "https://i.ibb.co/kHS9C2F/CM-Android-dev-Flutter-FB.png",
                          "Android App With Flutter",
                          " Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS\n"
                              " and Android in record time. Flutter works with existing code, is used by\n"
                              " developers and organizations around the world, and is free and open source."),
                      bigCard(
                          context,
                          "https://miro.medium.com/max/1200/1*VkFBn6nB2CgX2L2H_juz3A.png",
                          "iOS App With Flutter",
                          " Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS\n"
                              "and Android in record time. Flutter works with existing code, is used by\n"
                              " developers and organizations around the world, and is free and open source."),
                      bigCard(
                          context,
                          "https://i.ibb.co/gP7tbt8/CM-Flutter-web-desktop.png",
                          "Web App With Flutter(Preview)",
                          " Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS\n"
                              "and Android in record time. Flutter works with existing code, is used by\n"
                              " developers and organizations around the world, and is free and open source."),
                      bigCard(
                          context,
                          "https://i.ibb.co/ySv0zqV/Flutter-Desktop-Application.png",
                          "Desktop App With Flutter(Preview)",
                          " Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS\n"
                              "and Android in record time. Flutter works with existing code, is used by\n"
                              " developers and organizations around the world, and is free and open source.")
                    ],
                  ),
                )
        ],
      ),
    );
  }
}

Widget smallCard(BuildContext context, var imagelink, var tittle, var contain) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(height * .01),
        child: Container(
          height: height * 0.82,
          width: width * .9,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.blue[50],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network(imagelink),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: height * .01),
                      child: Text(
                        tittle,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(height * .01),
                      child: Text(
                        contain,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}

Widget bigCard(BuildContext context, var imagelink, var tittle, var contain) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Padding(
    padding: EdgeInsets.all(height * .01),
    child: Container(
      height:height * 0.4,
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.blue[50],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.network(imagelink),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: height * .01),
                  child: Text(
                    tittle,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * .01),
                  child: ResponsiveLayout.isSmallScreen(context)
                      ? Container(
                          child: Text(
                            contain,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                        )
                      : Text(
                          "Flutter is Google's mobile SDK for crafting high-quality native interfaces on\n"
                              " iOS and Android in record time. Flutter works with existing code,\n"
                              " is used by developers and organizations around the world, and is free \n"
                              "and open source.",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
