import 'package:get/route_manager.dart';
import 'package:my_app/screens/Groups/groups_list.dart';
import 'package:my_app/screens/Logs/logs_view.dart';
import 'package:my_app/screens/Users/user_list.dart';
import 'package:my_app/screens/home_page.dart';
import 'package:my_app/screens/password/password_list.dart';

class Routes {
  static const String home = '/';
  static const String login = '/login';
  static const String passwordList = '/passwordList';
  static const String passwordDetail = '/passwordDetail';
  static const String passwordAdd = '/passwordAdd';
  static const String passwordEdit = '/passwordEdit';
  static const String groupList = '/groupList';
  static const String groupDetail = '/groupDetail';
  static const String groupAdd = '/groupAdd';
  static const String groupEdit = '/groupEdit';
  static const String userList = '/userList';
  static const String userDetail = '/userDetail';
  static const String userAdd = '/userAdd';
  static const String userEdit = '/userEdit';
  static const String logList = '/logList';
  static const String logDetail = '/logDetail';
}

class AppPages {
  static const initialRoute = Routes.home;
  static final pages = [
    GetPage(name: Routes.home, page: () => HomePage()),
    // GetPage(name: Routes.login, page: () => const LoginPage()),
    GetPage(name: Routes.passwordList, page: () => const PasswordList()),
    // GetPage(name: Routes.passwordDetail, page: () => const PasswordDetail()),
    // GetPage(name: Routes.passwordAdd, page: () => const PasswordAdd()),
    // GetPage(name: Routes.passwordEdit, page: () => const PasswordEdit()),
    GetPage(name: Routes.groupList, page: () => const GroupsList()),
    // GetPage(name: Routes.groupDetail, page: () => const GroupDetail()),
    // GetPage(name: Routes.groupAdd, page: () => const GroupAdd()),
    // GetPage(name: Routes.groupEdit, page: () => const GroupEdit()),
    GetPage(name: Routes.userList, page: () => UserList()),
    // GetPage(name: Routes.userDetail, page: () => const UserDetail()),
    // GetPage(name: Routes.userAdd, page: () => const UserAdd()),
    // GetPage(name: Routes.userEdit, page: () => const UserEdit()),
    GetPage(name: Routes.logList, page: () => const Logs()),
    // GetPage(name: Routes.logDetail, page: () => const LogDetail()),
  ];
}
