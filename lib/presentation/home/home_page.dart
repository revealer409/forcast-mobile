import 'package:flutter/material.dart';
import 'package:forcast/presentation/auth/account_page.dart';
import 'package:forcast/presentation/favorities/favorites_page.dart';
import 'package:forcast/presentation/forum/questions_page.dart';
import 'package:forcast/presentation/opportunities/opportunities_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Page controller
  PageController _pageController = PageController();

  //page List
  final List<Widget> _screens = [
    OpportunitiesPage(),
    QuestionsPage(),
    FavoritesPage(),
    AccountPage()
  ];
  int _selectedIndex = 0;
  void _onPageChanged(int pageIndex) {
    setState(() {
      _selectedIndex = pageIndex;
    });
  }

  void _onItemTapped(int itemIndex) {
    _pageController.jumpToPage(itemIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
*/
      body: PageView(
        children: _screens,
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(), //not scrollable
      ),
      // PageStorage(bucket: bucket, child: child),  //

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //NOTE: IF MORE THAN THREE ITEMS IN BottomNavigationBar then you have to give it type
        //oterwise visibility will become approximately  zero
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
              label: "Opportunities", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Forum", icon: Icon(Icons.chat)),
          BottomNavigationBarItem(
              label: "Favourite", icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(label: "Account", icon: Icon(Icons.person)),
        ],
        selectedItemColor: Colors.red,
        selectedLabelStyle: TextStyle(fontSize: 15),
      ),
    );
  }
}
