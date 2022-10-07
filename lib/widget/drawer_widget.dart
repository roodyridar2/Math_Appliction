// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:matrix/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_color/flutter_color.dart';

import '../main.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: knavbarColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "Open source",
                  style: TextStyle(fontSize: 20, color: ktextColor),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.dark_mode,
                color: ktextColor,
              ),
              title: Text(
                "Dark theme ",
                style: TextStyle(fontSize: 20, color: ktextColor),
              ),
              onTap: () {
                setState(() {
                  knavbarColor = Colors.black87;
                  kbackgroundColor = Colors.black87;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.light_mode,
                color: ktextColor,
              ),
              title: Text(
                "light mode ",
                style: TextStyle(fontSize: 20, color: ktextColor),
              ),
              onTap: () {
                setState(() {});

                knavbarColor = const Color(0xFF371B58);
                kbackgroundColor = HexColor("4C3575");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.github,
                color: ktextColor,
              ),
              title: Text(
                "Github ",
                style: TextStyle(
                  fontSize: 20,
                  color: ktextColor,
                ),
              ),
              onTap: _launchURLApp,
            )
          ],
        ),
      ),
    );
  }
}

_launchURLApp() async {
  var url = Uri.parse("https://github.com/roodyridar2/matrix-4by4");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
