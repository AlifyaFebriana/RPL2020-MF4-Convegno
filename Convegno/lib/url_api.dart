import 'package:convegno/host_api.dart';

class UrlAPI {
  static const String login =
      HostAPI.HOST + "login.php"; //http://192.168.1.11/Convegno/login.php
  static const String register_user = HostAPI.HOST +
      "register_user.php"; //http://192.168.1.11/Convegno/register_user.php
  static const String register_instructor = HostAPI.HOST +
      "register_instructor.php"; //http://192.168.1.11/Convegno/register_instructor.php
}
