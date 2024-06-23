import 'package:flutter/material.dart';
import 'package:travelappg8/models/tour_model.dart';

class TileTravel extends StatelessWidget {
  TourModel tourModel;

  TileTravel(this.tourModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffeef6fb),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 5,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                ),
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3),
                    BlendMode.srcATop,
                  ),
                  fit: BoxFit.cover,
                  image: NetworkImage(tourModel.imageUrl),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tourModel.ciudad,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff64766f),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    tourModel.descripcion,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff64766f),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '\$ ${tourModel.precio}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff64766f),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.cyan,
                ),
                child: Column(
                  children: [
                    Text(
                      tourModel.rating.toString(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
