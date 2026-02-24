import 'dart:convert';

import 'package:http/http.dart' as http;

// import 'package:http/http.dart' as http;

// import 'package:shared_preferences/shared_preferences.dart';

class ApiHelper {

  String baseUrl = "https://booking.opd.com.np/api/hotels";
  Future<Hotel?> getHotel() async {
    var url = Uri.parse(baseUrl);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      final jsonData = jsonDecode(response.body);
      print(jsonData);
      return Hotel(
        name: jsonData["result"][0]["name"] ?? "",
        id: jsonData["result"][0]["id"],
        price_per_night: jsonData["result"][0]["price_per_night"],
        description: jsonData["result"][0]["description"],
      );
    }
  }
}

class Hotel {

  int id;
  String name;
  String description;
  String price_per_night;

  Hotel({
    required this.id,
    required this.name,
    required this.description,
    required this.price_per_night,
  });
}
