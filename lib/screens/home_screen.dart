import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  final List<IconData> _icons = [
    CupertinoIcons.airplane,
    Icons.bed_rounded,
    Icons.directions_walk_rounded,
    Icons.directions_bike_rounded
  ];
  Widget _buildIcon(index) {
    return GestureDetector(
      onTap: () => setState(() {
        _selectedIndex = index;
      }),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).colorScheme.secondary
              : const Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : const Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(
              20.0,
              30.0,
              120.0,
              30.0,
            ),
            child: Text(
              'What you would like to find?',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _icons
                .asMap()
                .entries
                .map((map) => _buildIcon(map.key))
                .toList(),
          ),
          const SizedBox(height: 20.0),
          const DestinationCairousel(),
          const SizedBox(height: 20.0),
          const HotelCairousel(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (index) => setState(() {
          _currentTab = index;
        }),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'search',
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.local_pizza_rounded), label: ''),
          BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: _currentTab == 2
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                      width: 1.5),
                ),
                child: const CircleAvatar(
                  radius: 13.00,
                  backgroundImage: AssetImage('assets/images/santorini.jpg'),
                ),
              ),
              label: ''),
        ],
      ),
    );
  }
}
