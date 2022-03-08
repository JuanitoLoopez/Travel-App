import 'package:flutter/material.dart';
import 'package:travel_app/profile_trips.dart';
import 'package:travel_app/search_trips.dart';
import 'home_trips.dart';

class OwnNavigationBar extends StatefulWidget {
  const OwnNavigationBar({Key? key}) : super(key: key);

  @override
  State<OwnNavigationBar> createState() => _OwnNavigationBarState();
}

class _OwnNavigationBarState extends State<OwnNavigationBar> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    const SearchTrips(),
    const ProfileTrips(),
  ];
  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: widgetsChildren[indexTap],

      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Add Trip')
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          backgroundColor: Theme.of(context).secondaryHeaderColor,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.blueGrey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
