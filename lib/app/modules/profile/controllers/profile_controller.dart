import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';
import '../../../utils/api.dart';

class ProfileController extends GetxController {
  final box = GetStorage();
  var userprofile = {}.obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserProfile();
  }

  Future<void> fetchUserProfile() async {
    isLoading(true);
    final token = box.read('access_token');
    final url = Uri.parse('${BaseUrl.api}/profile');
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      userprofile.value = json.decode(response.body);
    } else {
      Get.snackbar('Error', 'Failed to fetch user profile',
          snackPosition: SnackPosition.BOTTOM);
    }
    isLoading(false);
  }

  logout() {}
}
