import 'package:get/get.dart';
import 'package:myapp/app/modules/button_menu/views/bottom_menu_view.dart';
import 'package:myapp/app/modules/kategori/views/create_kategori_view.dart';
import 'package:myapp/app/modules/kategori/views/edit_kategori_view.dart';
import 'package:myapp/app/modules/kategori/views/show_kategori_view.dart';

import '../middlewares/auth_middleware.dart';
import '../modules/biodata/bindings/biodata_binding.dart';
import '../modules/biodata/views/biodata_view.dart';
import '../modules/biodata/views/output_biodata.dart';
import '../modules/button_menu/bindings/button_menu_binding.dart';
import '../modules/counter/bindings/counter_binding.dart';
import '../modules/counter/views/counter_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kategori/bindings/kategori_binding.dart';
import '../modules/kategori/views/kategori_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BUTTON_MENU;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.BIODATA,
      page: () => BiodataView(),
      binding: BiodataBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.COUNTER,
      page: () => CounterView(),
      binding: CounterBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.OUTPUT,
      page: () => OutputView(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.BUTTON_MENU,
      page: () => BottomMenuView(),
      binding: BottomMenuBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.KATEGORI,
      page: () => KategoriView(),
      binding: KategoriBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name:  Routes.CREATE_KATEGORI,
      page: () => CreateKategoriView(),
      binding: KategoriBinding(),
      middlewares: [AuthMiddleware()],
    ),
  GetPage(
      name:  Routes.EDIT_KATEGORI,
      page: () => EditKategoriView(),
      binding: KategoriBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name:  Routes.SHOW_KATEGORI,
      page: () => ShowKategoriView(),
      binding: KategoriBinding(),
      middlewares: [AuthMiddleware()],
    ),
  ];
}

