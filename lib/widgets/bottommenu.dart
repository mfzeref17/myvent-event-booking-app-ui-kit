import 'package:bottom_navigation_view/bottom_navigation_view.dart';
import 'package:flutter/material.dart';
import 'package:uts_max/page/homepage.dart';
import 'package:uts_max/page/profilepage.dart';
import 'package:uts_max/widgets/colorscreen.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu>
    with SingleTickerProviderStateMixin {
  late final BottomNavigationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = BottomNavigationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _controller.goBack();
        return false;
      },
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Center(child: Text('AppBar Demo')),
        // ),
        body: BottomNavigationView(
          controller: _controller,
          transitionType: BottomNavigationTransitionType.fadeInOut,
          backgroundColor: Colors.lime,
          children: const [
            // ColorScreen(color: Colors.red),
            HomePage(),
            ColorScreen(color: Colors.amber),
            ColorScreen(color: Colors.green),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationIndexedBuilder(
          controller: _controller,
          builder: (context, index, child) {
            return BottomNavigationBar(
              currentIndex: index,
              onTap: (index) {
                _controller.goTo(index);
              },
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    label: 'Home', icon: Icon(Icons.home_filled)),
                BottomNavigationBarItem(
                    label: 'Favorite', icon: Icon(Icons.heart_broken)),
                BottomNavigationBarItem(
                    label: 'Ticket', icon: Icon(Icons.all_inbox)),
                BottomNavigationBarItem(
                    label: 'Profile', icon: Icon(Icons.people)),
              ],
            );
          },
        ),
      ),
    );
  }
}
