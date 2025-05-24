import 'package:ecommerce_app/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    brightness: Brightness.light,
    textTheme: GoogleFonts.montserratTextTheme(
      ThemeData.light().textTheme,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.background,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.grey2,
      hintStyle: const TextStyle(
        color: AppColors.grey5,
        fontWeight: FontWeight.w400,
      ),
      contentPadding: const EdgeInsets.all(16),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4), borderSide: BorderSide.none),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide.none,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        elevation: 0,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    ),
  );
}

/*
TextStyle	fontSize (pt)	fontWeight	Mô tả ngắn
displayLarge	57	w400 (normal)	Tiêu đề lớn nhất
displayMedium	45	w400	Tiêu đề lớn
displaySmall	36	w400	Tiêu đề vừa
headlineLarge	32	w400	Tiêu đề lớn
headlineMedium	28	w400	Tiêu đề trung bình
headlineSmall	24	w400	Tiêu đề nhỏ
titleLarge	22	w400	Tiêu đề cho các section
titleMedium	16	w500 (medium)	Tiêu đề nhỏ, nhấn mạnh
titleSmall	14	w500	Tiêu đề nhỏ hơn
bodyLarge	16	w400	Nội dung văn bản lớn
bodyMedium	14	w400	Nội dung văn bản chuẩn
bodySmall	12	w400	Văn bản nhỏ
labelLarge	14	w500	Nhãn, button text lớn
labelMedium	12	w500	Nhãn, button text nhỏ
labelSmall	11	w500	Nhãn nhỏ nhất
'''*/
