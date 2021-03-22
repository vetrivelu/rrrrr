import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:railbar_marketplace/LandArea.dart';
import 'States.dart';

/// This is the stateful widget that the main application instantiates.
class RailBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var toSelect = Provider.of<PageState>(context);
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            backgroundColor: Color(0xff0080ff),
            selectedIconTheme: IconThemeData(color: Colors.white, opacity: 100),
            selectedLabelTextStyle: TextStyle(color: Colors.white),
            unselectedIconTheme: IconThemeData(color: Colors.white, opacity: 100),
            unselectedLabelTextStyle: TextStyle(color: Colors.white),
            selectedIndex: toSelect.pageState,
            elevation: 15,
            onDestinationSelected: (int index) {
              toSelect.pageState = index;
            },
            labelType: NavigationRailLabelType.selected,
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.dashboard),
                // selectedIcon: Icon(Icons.favorite),
                label: Text('Dashboard'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person),
                // selectedIcon: Icon(Icons.book),
                label: Text('Clients'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shopping_bag_outlined),
                // selectedIcon: Icon(Icons.star),
                label: Text('Products'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shopping_cart_outlined),
                // selectedIcon: Icon(Icons.star),
                label: Text('Orders'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.chat_bubble_outline),
                // selectedIcon: Icon(Icons.star),
                label: Text('Chats'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                // selectedIcon: Icon(Icons.star),
                label: Text('Discounts'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings_sharp),
                // selectedIcon: Icon(Icons.star),
                label: Text('Settings'),
              ),
            ],
          ),
          // VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: LandArea(),
          ),
        ],
      ),
    );
  }
}
