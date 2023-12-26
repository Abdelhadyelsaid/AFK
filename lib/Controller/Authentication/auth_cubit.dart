import 'package:afk_task/Const/api_url.dart';
import 'package:afk_task/Model/login_model.dart';
import 'package:afk_task/helper/cache_helper.dart';
import 'package:afk_task/helper/dio_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(context) => BlocProvider.of(context);
  LoginModel? loginModel;

  void login({
    Function()? onError,
    Function()? onSuccess,
    required String userName,
    required String password,
  }) async {
    emit(LoginLoadingState());
    DioHelper.postData(
      url: ApiUrl.login,
      data: {
        "userName": userName,
        "password": password,
        "langId": 1,
        "computerName": ""
      },
    ).then((value) {
      print(value.data);
      if (value.statusCode == 200) {
        print("Login success");
        loginModel = LoginModel.fromJson(value.data);
        CacheHelper.saveData(key: "token", value: loginModel!.token);
        onSuccess!();
      } else {
        print("Login Error !");
        onError!();
      }
      emit(LoginSuccessState());
    }).catchError((e) {
      emit(LoginErrorState());
      print(e.toString());
    });
  }
}
