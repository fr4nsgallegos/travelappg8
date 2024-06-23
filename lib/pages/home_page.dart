import 'package:flutter/material.dart';
import 'package:travelappg8/constants/constants.dart';
import 'package:travelappg8/models/country_model.dart';
import 'package:travelappg8/servides/service_data.dart';
import 'package:travelappg8/widgets/card_travel.dart';
import 'package:travelappg8/widgets/tile_travel.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  List<CountryModel> variable = [];

  ServiceData _serviceData = ServiceData();

  Future<void> getCountryList() async {
    variable = await _serviceData.getCountries();
    setState(() {});
  }

  @override
  void initState() {
    getCountryList();
    // TODO: implement initState
    super.initState();
  }

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
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
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
              variable.isEmpty
                  ? Container(
                      padding: EdgeInsets.all(80),
                      height: 200,
                      width: double.infinity,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: variable.map((e) => CardTravel(e)).toList(),
                      ),
                    ),
              Text(
                "Popular tours",
                style: subTituloStyle,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TileTravel(),
                      TileTravel(),
                      TileTravel(),
                      TileTravel(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
