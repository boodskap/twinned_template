import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:twinned_template/pages/profile/page_profile.dart';

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
      case SelectedPage.menuItem1:
        return const Center(child: Text('Menu Item 1'));
      case SelectedPage.menuItem2:
        return const Center(child: Text('Menu Item 2'));
      case SelectedPage.menuItem3:
        return const Center(child: Text('Menu Item 3'));
      case SelectedPage.myProfile:
        return const ProfilePage();
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
              iconSize: 30,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          const CircleAvatar(
            radius: 18,
            child: Icon(
              Icons.person,
              size: 24,
              color: Colors.black,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {},
            tooltip: 'Log Out',
          ),
        ],
      ),
      body: _getPageAt(_selectedIndex),
      drawer: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.15,
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(
                      // color: Colors.blue,
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
                  title: const Text('Menu Item 1'),
                  selected: _selectedIndex == SelectedPage.menuItem1,
                  onTap: () {
                    _onItemTapped(SelectedPage.menuItem1);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Menu Item 2'),
                  selected: _selectedIndex == SelectedPage.menuItem2,
                  onTap: () {
                    _onItemTapped(SelectedPage.menuItem2);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Menu Item 3'),
                  selected: _selectedIndex == SelectedPage.menuItem3,
                  onTap: () {
                    _onItemTapped(SelectedPage.menuItem3);
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
        ),
      ),
    );
  }
}

enum SelectedPage {
  myHome,
  menuItem1,
  menuItem2,
  menuItem3,
  myProfile,
}
