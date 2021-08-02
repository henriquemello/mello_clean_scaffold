import 'package:clean_mello/modules/core/presentation/theme/color_schema.dart';
import 'package:clean_mello/modules/core/presentation/theme/custom_text_theme.dart';
import 'package:clean_mello/modules/core/utils/constants.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    backgroundColor: ColorSchema.neutral[50],
    hoverColor: ColorSchema.primary[300],
    scaffoldBackgroundColor: ColorSchema.neutral[50],
    primarySwatch: ColorSchema.primary,
    accentColor: ColorSchema.secondary,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorSchema.primary,
    ),
    unselectedWidgetColor: ColorSchema.neutral[300],
    appBarTheme: AppBarTheme(
      color: Colors.white,
      textTheme: lightTextTheme,
      iconTheme: lightIconTheme,
    ),
    cardTheme: CardTheme(
      color: ColorSchema.neutral[50],
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.kDefaultBorderRadius),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      fillColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return ColorSchema.primary;
          } else {
            return ColorSchema.neutral[300];
          }
        },
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          Colors.white,
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return ColorSchema.neutral[300]!;
            } else {
              return ColorSchema.primary;
            }
          },
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          lightTextTheme.label7,
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.kDefaultBorderRadius),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.transparent,
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          lightTextTheme.label7,
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.kDefaultBorderRadius),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return ColorSchema.neutral[300]!;
            } else {
              return Colors.white;
            }
          },
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          lightTextTheme.label7,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          ColorSchema.primary,
        ),
        side: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return BorderSide(
                color: ColorSchema.primary,
                width: 2,
              );
            } else {
              return BorderSide(
                color: ColorSchema.neutral[400]!,
                width: 3,
              );
            }
          },
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
    ),
    fontFamily: 'OpenSans',
    primaryTextTheme: lightTextTheme,
    accentTextTheme: lightTextTheme,
    textTheme: lightTextTheme,
    dividerTheme: const DividerThemeData(
      thickness: 2,
    ),
    iconTheme: lightIconTheme,
  );

  static ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: ColorSchema.neutral[800],
    hoverColor: ColorSchema.primary[300],
    scaffoldBackgroundColor: ColorSchema.neutral[800],
    primarySwatch: ColorSchema.primary,
    accentColor: ColorSchema.secondary,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorSchema.primary,
    ),
    unselectedWidgetColor: ColorSchema.neutral[300],
    appBarTheme: AppBarTheme(
      color: Colors.black,
      textTheme: lightTextTheme,
      iconTheme: lightIconTheme,
    ),
    cardTheme: CardTheme(
      color: ColorSchema.neutral[600],
      shadowColor: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.kDefaultBorderRadius),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      fillColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return ColorSchema.primary;
          } else {
            return ColorSchema.neutral[300];
          }
        },
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorSchema.neutral[800],
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          ColorSchema.neutral[200]!,
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return ColorSchema.neutral[300]!;
            } else {
              return ColorSchema.primary[900]!;
            }
          },
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          darkTextTheme.label7,
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.kDefaultBorderRadius),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.transparent,
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          darkTextTheme.label7,
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.kDefaultBorderRadius),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return ColorSchema.neutral[300]!;
            } else {
              return ColorSchema.neutral[800]!;
            }
          },
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          darkTextTheme.label7,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          ColorSchema.primary,
        ),
        side: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return BorderSide(
                color: ColorSchema.primary,
                width: 2,
              );
            } else {
              return BorderSide(
                color: ColorSchema.neutral[50]!,
                width: 3,
              );
            }
          },
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
    ),
    fontFamily: 'OpenSans',
    primaryTextTheme: darkTextTheme,
    accentTextTheme: darkTextTheme,
    textTheme: darkTextTheme,
    dividerTheme: const DividerThemeData(
      thickness: 2,
    ),
    iconTheme: darkIconTheme,
  );
}

CustomTextTheme lightTextTheme = CustomTextTheme(
  headline1: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 48,
  ),
  headline2: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 36,
  ),
  headline3: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 32,
  ),
  headline4: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 26,
  ),
  headline5: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 22,
  ),
  headline6: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 20,
  ),
  headline7: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 18,
  ),
  bodyText1: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 16,
  ),
  bodyText2: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 14,
  ),
  bodyText3: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 12,
  ),
  label1: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 36,
  ),
  label2: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 32,
  ),
  label3: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 26,
  ),
  label4: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 22,
  ),
  label5: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 20,
  ),
  label6: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 18,
  ),
  label7: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 16,
  ),
  label8: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 14,
  ),
  label9: TextStyle(
    color: ColorSchema.neutral[800],
    fontSize: 12,
  ),
);

CustomTextTheme darkTextTheme = CustomTextTheme(
  headline1: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 48,
  ),
  headline2: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 36,
  ),
  headline3: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 32,
  ),
  headline4: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 26,
  ),
  headline5: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 22,
  ),
  headline6: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 20,
  ),
  headline7: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 18,
  ),
  bodyText1: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 16,
  ),
  bodyText2: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 14,
  ),
  bodyText3: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 12,
  ),
  label1: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 36,
  ),
  label2: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 32,
  ),
  label3: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 26,
  ),
  label4: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 22,
  ),
  label5: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 20,
  ),
  label6: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 18,
  ),
  label7: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 16,
  ),
  label8: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 14,
  ),
  label9: TextStyle(
    color: ColorSchema.neutral[50],
    fontSize: 12,
  ),
);

IconThemeData darkIconTheme = const IconThemeData(
  color: Colors.white,
);

IconThemeData lightIconTheme = IconThemeData(
  color: ColorSchema.neutral,
);
