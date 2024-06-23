import 'package:flutter/material.dart';
import 'package:travelappg8/constants/constants.dart';
import 'package:travelappg8/widgets/card_travel.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Color(0xff64766f),
          ),
          leading: IconButton(
            onPressed: () {
              _globalKey.currentState?.openDrawer();
            },
            icon: Icon(
              Icons.sort,
              color: Color(0xff64766f),
            ),
          ),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.airplane_ticket,
                color: Colors.cyan,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "DiscountTour",
                style: TextStyle(color: Color(0xff64766f)),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find the best tour",
                style: tituloStyle,
              ),
              SizedBox(height: 8),
              Text(
                "Country",
                style: subTituloStyle,
              ),
              CardTravel(),
            ],
          ),
        ),
      ),
    );
  }
}
