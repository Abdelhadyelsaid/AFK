import 'package:afk_task/Const/constants.dart';
import 'package:afk_task/Controller/Authentication/auth_cubit.dart';
import 'package:afk_task/View/Screens/Home_Screen.dart';
import 'package:afk_task/View/Widgets/default_button.dart';
import 'package:afk_task/View/Widgets/default_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {},
                builder: (context, state) {
                  AuthCubit cubit = AuthCubit.get(context);
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 90,
                      ),
                      const Center(
                        child: Text(
                          'أفاقي ويب\nإحدي شركات أفاقي لتقنية المعلومات',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      defaultFormField(
                        width: .8.sw,
                        controller: emailController,
                        type: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your username';
                          } else {}
                        },
                        hint: 'Username',
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      defaultFormField(
                        width: .8.sw,
                        controller: passwordController,
                        type: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter your password !';
                          } else {}
                        },
                        hint: 'Password',
                      ),
                      state is LoginLoadingState
                          ? const Center(
                              child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                              child: CircularProgressIndicator(
                                color: Colors.blue,
                              ),
                            ))
                          : Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 100, 0, 0),
                                child: DefaultButton(
                                    function: () {
                                      if (formKey.currentState!.validate()) {
                                        cubit.login(
                                            userName: emailController.text,
                                            password: passwordController.text,
                                            onSuccess: () {
                                              onSuccess(
                                                  context: context,
                                                  text:
                                                      "Log in Successfully !");
                                              navigateAndFinish(context, HomeScreen());
                                            },
                                            onError: () {
                                              onError(context: context);
                                            });
                                      }
                                    },
                                    width: .8.sw,
                                    radius: 10,
                                    height: 60,
                                    text: 'تسجيل الدخول'),
                              ),
                            ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
