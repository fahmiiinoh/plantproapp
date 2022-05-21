import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/homepage/home_screen.dart';
import 'package:flutter_auth/Screens/myplant/myplant_screen.dart';
import 'package:flutter_auth/Screens/plants/plants_screen.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'Brian O Conner';
    final user = 'User';
    return Drawer(
      child: Material(
        color: Colors.green,
        child: ListView(
          children: <Widget>[
            buildHeader(
              name: name,
              user: user,
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: 'Home',
                icon: Icons.home,
                onClicked: () => selectedItem(context, 0)),
            const SizedBox(height: 10),
            Divider(color: Colors.white70),
            const SizedBox(
              height: 12,
            ),
            buildMenuItem(
                text: 'Plants',
                icon: Icons.info,
                onClicked: () => selectedItem(context, 1)),
            const SizedBox(height: 10),
            Divider(color: Colors.white70),
            const SizedBox(
              height: 12,
            ),
            buildMenuItem(
                text: 'MyPlant',
                icon: Icons.add,
                onClicked: () => selectedItem(context, 2)),
            const SizedBox(height: 10),
            Divider(color: Colors.white70),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader({
  String name,
  String user,
}) =>
    InkWell(
        child: Container(
      padding: (EdgeInsets.symmetric(vertical: 40)),
      child: Row(
        children: [
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                user,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    ));

Widget buildMenuItem({
  String text,
  IconData icon,
  VoidCallback onClicked,
}) {
  final color = Colors.white;


  return ListTile(
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(text, style: TextStyle(color: color)),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomeScreen()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => PlantsScreen()));
      break;
    case 2:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MyPlantScreen()));
      break;
  }
}
