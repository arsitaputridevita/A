import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/app/data/kategori/kategori_model.dart';
import 'dart:convert';

// ignore: duplicate_import
import 'package:myapp/app/data/kategori/kategori_model.dart';
import '../../../utils/api.dart';

class KategoriController extends GetxController {
  var kategorilist = <Datakategori>[].obs;
  var isLoading = true.obs;

  final String baseUrl = '${BaseUrl.api}/kategori';

  @override
  void onInit() {
    fetchKategori();
    super.onInit();
  }

  // fetch kategori
  void fetchKategori() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        var Kategori = kategori.fromJson(jsonResponse);
        kategorilist.value = Kategori.data!;
      } else {
        Get.snackbar("error", "Failed to fetch categories");
      }
    } catch (e) {
      Get.snackbar("error", "Failed to fetch categories");
    } finally {
      isLoading(false);
    }
  }

// ADD KATEGORI
  Future<void> addKategori(Datakategori kategori) async {
    try {
      isLoading(true);
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: {"content-Type": 'application/json'},
        body: jsonEncode(kategori.toJson()),
      );
      if (response.statusCode == 200) {
        fetchKategori();
        Get.back();
        Get.snackbar("Success", "Kategori added successfully");
      } else {
        Get.snackbar("Error", "Failed to add kategori");
      }
    } catch (e) {
      Get.snackbar("Error", "Failed to add kategori : $e");
    } finally {
      isLoading(false);
    }
  }

  // update KATEGORI
  Future<void> updatedKategori(int id, Datakategori updatedKategori) async {
    try {
      isLoading(true);
      final response = await http.put(
        Uri.parse(baseUrl),
        headers: {"content-Type": 'application/json'},
        body: json.encode(updatedKategori.toJson()),
      );
      if (response.statusCode == 201) {
        fetchKategori();
        Get.back();
        Get.snackbar("Success", "Kategorued uppdate successfully");
      } else {
        Get.snackbar("Error", "Failed tu uppdate kategori");
      }
    } catch (e) {
      Get.snackbar("Error", "Failed to uppdate kategori : $e");
    } finally {
      isLoading(false);
    }
  }

  // ADD KATEGORI
  Future<void> deleteKategori(int id) async {
    try {
      isLoading(true);
      final response = await http.delete(Uri.parse("$baseUrl/$id"));
      if (response.statusCode == 200) {
        fetchKategori();
        Get.back();
        Get.snackbar("Success", "Kategorued delete successfully");
      } else {
        Get.snackbar("Error", "Failed tu delete kategori");
      }
    } catch (e) {
      Get.snackbar("Error", "Failed to delete kategori : $e");
    } finally {
      isLoading(false);
    }
  }
}
