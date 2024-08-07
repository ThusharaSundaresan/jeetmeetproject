//import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:project_jee/LeaveAplyalertRespo.dart';
import 'package:project_jee/LeaveApplyAddRespo.dart';
import 'package:project_jee/LeaveApplysaveRespo.dart';
import 'package:project_jee/Mydairysave.dart';
import 'package:project_jee/Mydiaryrespo.dart';
import 'package:project_jee/Mypagerespo.dart';
import 'package:project_jee/Profilename_editrespo.dart';
import 'package:project_jee/diaryeditrespo.dart';
import 'package:project_jee/logoutmodel.dart';
import 'package:project_jee/staff_directoryModel.dart';
import 'package:project_jee/url.dart';
import 'package:project_jee/loginrespo.dart';
import 'package:project_jee/profilerespo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClass {
  static ApiClass instance = ApiClass();
  factory() {
    return instance;
  }

  final dio = Dio();
  final url = URL();

  ApiClass() {
    dio.options = BaseOptions(
      baseUrl: url.baseurl,
      responseType: ResponseType.json,
    );
  }

  Future<DataIntialize?> loginuserapi(FormData formData) async {
    try {
      final result = await dio.post(url.loginEndpoint, data: formData);
      return DataIntialize.fromJson((result.data));
    }
    // ignore: deprecated_member_use
    on DioError catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }

  Future<Dashboard?> profileuserapi() async {
    print("aqqqqqqqqqqqqqqqqqqq");
    SharedPreferences sharepref = await SharedPreferences.getInstance();
    var toke1 = sharepref.getString("Token");
    print('thattttttttttt');
    final result1 = await dio.get(url.baseurl + url.ProfileEndpoint,
        options: Options(headers: {
          "content": "application/json",
          "Accepts": "application/json",
          "Authorization": "Bearer $toke1"
        }));
    print("asadasdasfasf$result1");
    return Dashboard.fromJson((result1.data));
  }

  Future<MyPageDetailmod?> MyProfilepageApi() async {
    print("fdfffffffvfbjccvvb");
    SharedPreferences sharedpref2 = await SharedPreferences.getInstance();
    var toke2 = sharedpref2.getString("Token");
    final result2 = await dio.get(url.baseurl + url.MyprofileEndpoint,
        options: Options(headers: {
          "content": "application/json",
          "Accepts": "application/json",
          "Authorization": "Bearer $toke2"
        }));
    return MyPageDetailmod.fromJson((result2.data));
  }

  Future<ProfileNameEdit?> EditProfileNameApi(FormData formData) async {
    SharedPreferences sharedpref3 = await SharedPreferences.getInstance();
    var toke3 = sharedpref3.getString("Token");
    try {
      final result3 = await dio.post(url.EditProfilenameEndpoint,
          data: formData,
          options: Options(headers: {
            "content": "application/json",
            "Accepts": "application/json",
            "Authorization": "Bearer $toke3"
          }));
      return ProfileNameEdit.fromJson((result3.data));
    } on DioException catch (e) {
      print(e);
    }
  }

  Future<MyDiaryModel?> DiariesApi() async {
    SharedPreferences sharedpref4 = await SharedPreferences.getInstance();
    var toke4 = sharedpref4.getString("Token");
    final result4 = await dio.post(url.baseurl + url.DiariesEndpoint,
        options: Options(headers: {
          "content": "application/json",
          "Accepts": "application/json",
          "Authorization": "Bearer $toke4"
        }));
    return MyDiaryModel.fromJson((result4.data));
  }

  Future<MyDiarysaveModel?> DiariessaveApi(FormData formData) async {
    SharedPreferences sharedpref5 = await SharedPreferences.getInstance();
    var toke5 = sharedpref5.getString("Token");
    try {
      final result5 = await dio.post(url.DiariesSaveEndpoint,
          data: formData,
          options: Options(headers: {
            "content": "application/json",
            "Accepts": "application/json",
            "Authorization": "Bearer $toke5"
          }));
      return MyDiarysaveModel.fromJson(result5.data);
    } on DioException catch (e) {
      print(e);
    }
  }

  Future<MyDiaryeditModel?> DiarieseditAPI(FormData formData) async {
    SharedPreferences sharedpref6 = await SharedPreferences.getInstance();
    var toke6 = sharedpref6.getString("Token");
    try {
      final result6 = await dio.post(url.DieariesEditEndpoint,
          options: Options(headers: {
            "content": "application/json",
            "Accepts": "application/json",
            "Authorization": "Bearer $toke6"
          }));
      return MyDiaryeditModel.fromJson(result6.data);
    } on DioException catch (e) {
      print(e);
    }
  }

  Future<StaffDirectoryModel?> StaffDirectoryApi() async {
    SharedPreferences sharedpref7 = await SharedPreferences.getInstance();
    var toke7 = sharedpref7.getString("Token");
    final result7 = await dio.get(url.baseurl + url.StaffEndpoint,
        options: Options(headers: {
          "content": "application/json",
          "Accepts": "application/json",
          "Authorization": "Bearer $toke7"
        }));
    return StaffDirectoryModel.fromJson(result7.data);
  }

  Future<LogoutModel?> LogOutApi() async {
    SharedPreferences sharepref8 = await SharedPreferences.getInstance();
    var toke8 = sharepref8.getString("Token");
    final result8 = await dio.get(url.baseurl + url.LogoutEndpoint,
        options: Options(headers: {
          "content": "application/json",
          "Accepts": "application/json",
          "Authorization": "Bearer $toke8"
        }));
    return LogoutModel.fromJson(result8.data);
  }

  Future<LeaveApplySave?> LeaveApplyApi() async {
    SharedPreferences sharepref9 = await SharedPreferences.getInstance();
    var toke9 = sharepref9.getString("Token");
    final result9 = await dio.post(url.LeaveApplyEndpoint,
        options: Options(headers: {
          "content": "application/json",
          "Accepts": "application/json",
          "Authorization": "Bearer $toke9"
        }));
    return LeaveApplySave.fromJson(result9.data);
  }

  Future<LeaveApplyadd?> LeaveApplyAddApi() async {
    SharedPreferences sharepref10 = await SharedPreferences.getInstance();
    var toke10 = sharepref10.getString("Token");
    final result10 = await dio.get(url.baseurl + url.LeaveApplyAdd,
        options: Options(headers: {
          "content": "application/json",
          "Accepts": "application/json",
          "Authorization": "Bearer $toke10"
        }));
    return LeaveApplyadd.fromJson(result10.data);
  }

  Future<LeaveApplyalert?> LeaveAplyAlertApi(FormData formData) async {
    print("tttttttttttttttttttttttttttttt$formData");
    SharedPreferences sharepref11 = await SharedPreferences.getInstance();
    var toke11 = sharepref11.getString("Token");
    final result11 = await dio.post(url.LeaveAplySaveEndpoint,
        data: formData,
        options: Options(headers: {
          "content": "application/json",
          "Accepts": "application/json",
          "Authorization": "Bearer $toke11"
        }));
    print('reeeeeeeeeee$result11');
    return LeaveApplyalert.fromJson(result11.data);
  }
}
