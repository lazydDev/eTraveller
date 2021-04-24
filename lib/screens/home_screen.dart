import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_1/widgets/destination_carousel.dart';
import 'package:travel_1/widgets/hotel_carouel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.planeArrival,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _builIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(_icons[index],
            size: 20.0,
            color: _selectedIndex == index
                ? Theme.of(context).accentColor
                : Color(0xFFB4C1C4)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                "What would you like to find ?",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry map) => _builIcon(map.key))
                  .toList(),
            ),
            SizedBox(height: 20.0),
            DestinationCarousel(),
            SizedBox(height: 20.0),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_cafe,
                size: 30.0,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage(
                    'https://instagram.fdel3-1.fna.fbcdn.net/v/t51.2885-19/s320x320/155291404_353975595735429_8614720993252129419_n.jpg?tp=1&_nc_ht=instagram.fdel3-1.fna.fbcdn.net&_nc_ohc=2Dhg9XyfFB0AX8sKhuc&edm=ABfd0MgAAAAA&ccb=7-4&oh=eff3baea6ebfe7101ba14fe3fdbb4fad&oe=60A90CC7&_nc_sid=7bff83'),
              ),
              title: SizedBox.shrink()),
        ],
      ),
    );
  }
}
