import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class AuthenticationAPI {
  Future<int> signInAPI(
    String mobileNumber,
    String password,
  ) async {
    String url = '';

    http.Response response = await http.post(
      Uri.parse(url),
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      body: jsonEncode({
        'mobile_number': mobileNumber,
        'password': password,
      }),
    );

    print(response.statusCode);
    print(response.body);

    return response.statusCode;
  }
}
