import 'package:flutter/material.dart';
import 'package:railbar_marketplace/States.dart';
import 'package:provider/provider.dart';
import './Screens/clientRegister.dart';

class LandArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageState>(builder: (context, pageState, _) {
      var selectedIndex = pageState.pageState;
      if (selectedIndex == 1) {
        return ClientRegister();
      } else {
        return Container(color: Colors.lightGreen);
      }
    });
  }
}
