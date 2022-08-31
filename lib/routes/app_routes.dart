import 'package:status_check_mobile/presentation/service_status_screen/service_status_screen.dart';
import 'package:status_check_mobile/presentation/service_status_screen/binding/service_status_binding.dart';
import 'package:status_check_mobile/presentation/service_list_screen/service_list.dart';
import 'package:status_check_mobile/presentation/service_list_screen/binding/service_list_binding.dart';
import 'package:status_check_mobile/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:status_check_mobile/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String serviceStatusScreen = '/service_status_screen';

  static String serviceListScreen = '/service_list_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: serviceStatusScreen,
      page: () => ServiceStatusScreen(),
      bindings: [
        ServiceStatusBinding(),
      ],
    ),
    GetPage(
      name: serviceListScreen,
      page: () => ServiceListScreen(),
      bindings: [
        ServiceListBinding(),
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
      page: () => ServiceListScreen(),
      bindings: [
        ServiceListBinding(),
      ],
    )
  ];
}
