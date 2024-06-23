import 'package:travelappg8/models/tour_model.dart';

class CountryModel {
  String nombre;
  double rating;
  List<TourModel> toursList;
  String imageUrl;
  CountryModel(
      {required this.nombre,
      required this.rating,
      required this.toursList,
      required this.imageUrl});
}

CountryModel peru = CountryModel(
    nombre: "Perú",
    rating: 10,
    toursList: [tour1, tour2, tour3, tour4],
    imageUrl:
        "https://media.glamour.mx/photos/6571ee488ca632d6b9243a4f/16:9/w_2560%2Cc_limit/perumarriotr.jpg");
CountryModel argentina = CountryModel(
    nombre: "Argentina",
    rating: 5,
    toursList: [tour3, tour2],
    imageUrl:
        "https://media.istockphoto.com/id/1011241694/es/foto/barco-longtail-madera-tradicional-tailandés-y-la-hermosa-playa-de-arena.jpg?s=612x612&w=0&k=20&c=d0c5ErnZP-59whs2UpT4-RY_EYxn46WqURegnuv47Uk=");
CountryModel chile = CountryModel(
    nombre: "Chile",
    rating: 7,
    toursList: [tour4],
    imageUrl:
        "https://media.admagazine.com/photos/6406a9ee7f8cddc094f9990d/master/pass/Santiago%20Chile.jpg");
CountryModel venezuela = CountryModel(
    nombre: "Venezuela",
    rating: 7,
    toursList: [tour1, tour2, tour3],
    imageUrl:
        "https://media-cdn.tripadvisor.com/media/photo-s/1c/9c/b9/09/hermoso-paisaje-de-mi.jpg");
