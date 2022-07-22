import 'package:statusmobile/presentation/category_c_screen/category_c_screen.dart';
import 'package:statusmobile/presentation/category_c_screen/binding/category_c_binding.dart';
import 'package:statusmobile/presentation/category_e_screen/category_e_screen.dart';
import 'package:statusmobile/presentation/category_e_screen/binding/category_e_binding.dart';
import 'package:statusmobile/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:statusmobile/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String categoryCScreen = '/category_c_screen';

  static String categoryEScreen = '/category_e_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: categoryCScreen,
      page: () => CategoryCScreen(),
      bindings: [
        CategoryCBinding(),
      ],
    ),
    GetPage(
      name: categoryEScreen,
      page: () => CategoryEScreen(),
      bindings: [
        CategoryEBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => CategoryCScreen(),
      bindings: [
        CategoryCBinding(),
      ],
    )
  ];
}
