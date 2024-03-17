import 'package:flutter/cupertino.dart';
import './pages/expenses.dart';
import './pages/reports.dart';
import './pages/add.dart';
import './pages/settings.dart';
import './types/widgets.dart';
import 'pages/add_goals.dart';

class TabsController extends StatefulWidget {
  const TabsController({super.key});

  @override
  State<TabsController> createState() => _TabsControllerState();
}

class _TabsControllerState extends State<TabsController> {
  var _selectedIndex = 0;

  static const List<WidgetWithTitle> _pages = [
    Expenses(),
    Reports(),
    Add(),
    AddGoals(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Color.fromARGB(255, 48, 69, 112),
          items: const <BottomNavigationBarItem>[
            
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return _pages[index];
            },
          );
        });
  }
}
