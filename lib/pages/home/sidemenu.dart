import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key, this.selectedPage = SelectedPage.myHome});

  final SelectedPage selectedPage;

  @override
  Widget build(BuildContext context) {
    return MyHomePage(
      selectedPage: selectedPage,
      title: 'Home Page',
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {super.key, required this.title, required this.selectedPage});

  final String title;
  final SelectedPage selectedPage;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SelectedPage _selectedIndex = SelectedPage.myHome;
  final GlobalKey<ConvexAppBarState> _appBarKey =
      GlobalKey<ConvexAppBarState>();

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedPage;
  }

  void _onItemTapped(SelectedPage index) {
    setState(() {
      _selectedIndex = index;
      _appBarKey.currentState?.animateTo(index.index);
    });
  }

  Widget _getPageAt(SelectedPage index) {
    switch (index) {
      case SelectedPage.myHome:
        return const Center(child: Text('Home Page'));
      case SelectedPage.myDevices:
        return const Center(child: Text('My Devices Page'));
      case SelectedPage.filters:
        return const Center(child: Text('Filters Page'));
      case SelectedPage.subscription:
        return const Center(child: Text('Subscription Page'));
      case SelectedPage.myProfile:
        return const Center(child: Text('My Profile Page'));
      default:
        return const Center(child: Text('Unknown Page'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('My App - ${_selectedIndex.name}'),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset('assets/images/logo-large.png'),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: _getPageAt(_selectedIndex),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Image.asset('assets/images/logo-large.png'),
            ),
            ListTile(
              title: const Text('Home'),
              selected: _selectedIndex == SelectedPage.myHome,
              onTap: () {
                _onItemTapped(SelectedPage.myHome);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('My Devices'),
              selected: _selectedIndex == SelectedPage.myDevices,
              onTap: () {
                _onItemTapped(SelectedPage.myDevices);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Filters'),
              selected: _selectedIndex == SelectedPage.filters,
              onTap: () {
                _onItemTapped(SelectedPage.filters);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Subscription'),
              selected: _selectedIndex == SelectedPage.subscription,
              onTap: () {
                _onItemTapped(SelectedPage.subscription);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('My Profile'),
              selected: _selectedIndex == SelectedPage.myProfile,
              onTap: () {
                _onItemTapped(SelectedPage.myProfile);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

enum SelectedPage {
  myHome,
  myDevices,
  filters,
  subscription,
  myProfile,
}
