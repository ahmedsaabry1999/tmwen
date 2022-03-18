import 'dart:convert';

import 'package:get/get.dart';
import 'package:tamween_flutter_project/exceptions/unauthenticated_exception.dart';
import 'package:tamween_flutter_project/shared/api_routes.dart';

class AuthController extends GetConnect {
  var token = 'e4a8ad8337fe2e905fbe6db93c475e4c5b07f5b3'.obs;
  RxInt userType = (-1).obs;
  RxInt vendorId = (-1).obs;

  Future<void> loginUser(String username, String password) async {
    print(ApiRoutes.login);
    Response response = await post(
      ApiRoutes.login,
      json.encode({
        'username': username,
        'password': password,
      }),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    final decodedResponseBody = response.body;
    print(decodedResponseBody);
    print(response.statusCode);
    if (response.statusCode == 200) {
      token.value = decodedResponseBody['token'];
      userType.value = decodedResponseBody['user_type'];
      if (userType.value == 2) {
        vendorId.value = decodedResponseBody['vendor_id'];
      }
      print(token);
    } else {
      throw UnauthenticatedException();
    }
  }

  Future<void> registerUser({
    required String email,
    required String password,
    required String username,
    required String firstName,
    required String lastName,
    required int countryId,
    required int cityId,
    required String credit,
  }) async {
    print(ApiRoutes.register);
    Response response = await post(
      ApiRoutes.register,
      {
        'username': username,
        'password': password,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'country': countryId,
        'city': cityId,
        'credit': credit,
      },
    );

    final decodedResponseBody = response.body;
    print(decodedResponseBody);
    print(response.statusCode);
    if (response.statusCode == 201) {
      // token = decodedResponseBody['token'];
      // print(token);
    } else {
      throw UnauthenticatedException();
    }
  }
  // Future<void> logoutUser() async {}
}
