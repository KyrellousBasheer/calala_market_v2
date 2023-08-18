import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

var kIndexUrl = "https://backend.forsaegypt.com/api/v1/stores/index/";

class ApiClient {
  static Future<List> getProducts() async {
    final response = await http.get(Uri.parse(kIndexUrl));
    if (response.statusCode == 200) {
      return (json.decode(response.body)["results"] ?? [])[0]["offers"];
    } else {
      throw Exception('Failed to load data from API');
    }
  }

  static Future<Position> getCurrentLocation() async {
    // bool serviceEnabled = false;
    // serviceEnabled = await Geolocator.isLocationServiceEnabled();
    // if await Geolocator.

    // var denilals = [
    //   LocationPermission.denied,
    //   LocationPermission.deniedForever,
    //   LocationPermission.unableToDetermine
    // ];
    // for (var i = 0;
    //     i <= 10 && denilals.contains(await Geolocator.checkPermission());
    //     i++) {
    //   // var res = await Geolocator.requestPermission();
    //   // print(res);
    //   await Geolocator.openLocationSettings();
    // }
    // LocationPermission permission = await Geolocator.checkPermission();
    // if (permission == LocationPermission.denied) {
    //   Future.error("Location permissions are denied");
    // }
    // if (permission == LocationPermission.deniedForever) {
    //   Future.error("Location permissions are permanently denied");
    // }
    await Geolocator.requestPermission();

    // // await Geolocator.openLocationSettings();
    // print(
    //     "await Geolocator.getLocationAccuracy()  =>>  ${await Geolocator.getLocationAccuracy()}");
    return await Geolocator.getCurrentPosition();
  }
}
