import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  double? height,
  double? width,
  bool noBorder = false,
  bool readOnly = false,
  double? textSize,
  String? title,
  onSubmit,
  onChanged,
  onTap,
  bool isPassword = false,
  required String? Function(String?)? validator,
  required String hint,
  IconData? prefix,
  bool? filled,
  bool isClickable = true,
  Color? suffixColor,
  Function? suffixPressed,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null
            ? Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18.sp, color: Colors.grey),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        )
            : SizedBox(),
        Container(
          width: width ?? .9.sw,
          height: height,
          child: TextFormField(
            readOnly: readOnly,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: textSize ?? 14.sp,
              color: Colors.black,
            ),
            controller: controller,
            keyboardType: type,
            obscureText: isPassword,
            enabled: isClickable = true,
            onFieldSubmitted: onSubmit,
            onChanged: onChanged,
            onTap: onTap,
            validator: validator,
            decoration: InputDecoration(
              filled: filled,
              fillColor: Colors.grey.shade300,
              border: noBorder
                  ? null
                  : OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey,fontSize: 17),
             // prefixIcon: Icon(prefix),
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    );