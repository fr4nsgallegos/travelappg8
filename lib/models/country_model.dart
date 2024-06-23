import 'package:travelappg8/models/tour_model.dart';

class CountryModel {
  String nombre;
  double rating;
  List<TourModel> toursList;
  CountryModel({
    required this.nombre,
    required this.rating,
    required this.toursList,
  });
}

CountryModel peru = CountryModel(
  nombre: "Perú",
  rating: 10,
  toursList: [tour1, tour2, tour3, tour4],
);
CountryModel argentina = CountryModel(
  nombre: "Argentina",
  rating: 5,
  toursList: [tour3, tour2],
);
CountryModel chile = CountryModel(
  nombre: "Perú",
  rating: 7,
  toursList: [tour4],
);
CountryModel venezuela = CountryModel(
  nombre: "Venezuela",
  rating: 7,
  toursList: [tour1, tour2, tour3],
);
