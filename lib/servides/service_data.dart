import 'package:travelappg8/models/country_model.dart';
import 'package:travelappg8/models/tour_model.dart';

class ServiceData {
  Future<List<CountryModel>> getCountries() {
    return Future.delayed(Duration(seconds: 3), () {
      return [peru, chile, argentina, venezuela];
    });
  }

  Future<List<TourModel>> getPopularTours() {
    return Future.delayed(Duration(seconds: 5), () {
      return [tour1, tour2, tour3, tour4, tour1, tour2, tour3];
    });
  }
}
