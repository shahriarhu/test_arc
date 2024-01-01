import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_arc/core/models/profiles_model.dart';

class ProfileAPI {
  Future<List<ProfilesModel>> getProfilesAPI() async {
    http.Response response;

    response = await http.get(
      Uri.parse('https://api.demo.hidayahsmart.solutions/v1/tv/info/all/2'),
      // headers: {
      //   HttpHeaders.authorizationHeader: 'Bearer $token',
      // },
    );

    List<ProfilesModel> profiles = profilesModelFromJson(response.body);

    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    return profiles;
  }
}
