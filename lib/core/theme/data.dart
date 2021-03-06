import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IdeaData {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static final Color _lightFocusColor = _lightFillColor.withOpacity(0.12);
  static final Color _darkFocusColor = _darkFillColor.withOpacity(0.12);

  static ThemeData light = themeData(lightScheme, _lightFocusColor);
  static ThemeData dark = themeData(darkScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      primaryColor: colorScheme.primary,
      accentColor: colorScheme.secondary,
      // canvasColor: Colors.transparent,
      // scaffoldBackgroundColor: colorScheme.secondary,
      // backgroundColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.onBackground,
      backgroundColor: colorScheme.background,
      // highlightColor: Colors.transparent,
      // splashColor: Colors.transparent,
      focusColor: focusColor,
      shadowColor: colorScheme.secondaryVariant,
      // fontFamily: "Lato, 'Paduak', sans-serif",
      // fontFamily: "Lato, Mm3Web",
      fontFamily: "Lato, sans-serif",

      bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // clipBehavior: Clip.antiAlias,
        // modalBackgroundColor: colorScheme.background,
        modalElevation: 20.0,
        // backgroundColor: colorScheme.primary,
        elevation: 10.0,
        // clipBehavior: Clip.antiAlias
        // backgroundColor: Colors.red
      ),
      // tooltipTheme: TooltipThemeData()
      cupertinoOverrideTheme: CupertinoThemeData(
        // textTheme: CupertinoTextThemeData(),
        // primaryColor: Colors.black54
        primaryColor: colorScheme.primaryVariant
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        // fillColor: Colors.red,
        hoverColor: Colors.red,
        // fillColor: colorScheme.background,
        fillColor: colorScheme.primary,
        // fillColor: colorScheme.secondary,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0.0),
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0.0),
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent,width: 0.0),
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent,width: 0.0),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        )
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colorScheme.primaryVariant,
        selectionColor: colorScheme.background,
        selectionHandleColor: colorScheme.background,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colorScheme.secondaryVariant,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.vertical(
            // top: Radius.elliptical(3, 2)
            top: Radius.circular(7)
          ),
        ),
      )
    );
  }

  static const ColorScheme lightScheme = ColorScheme(
    primary: Colors.white,
    primaryVariant: Colors.black,
    secondary: Colors.white,
    secondaryVariant: Colors.black45,
    background: Colors.black38,
    // background: Color(0xFFe0e1e6),
    surface: Color(0xFFFAFBFB),
    // scaffoldBackgroundColor
    // onBackground: Color(0xFFf2f2f2),
    // onBackground: Color(0xFFecebeb),
    onBackground: Color(0xFFeff0f4),
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: _lightFillColor,
    onSurface: _lightFillColor,
    brightness: Brightness.light
  );

  static const ColorScheme darkScheme = ColorScheme(
    primary: Color(0xFF3D3C3D),
    primaryVariant: Colors.white,
    secondary: Color(0xFF3D3C3D),
    secondaryVariant: Color(0xFF451B6F),
    background: Color(0xFF5E5D5E),
    surface: Color(0xFF1F1929),
    // scaffoldBackgroundColor
    onBackground: Color(0xFF5E5D5E),
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    onSurface: _darkFillColor,
    brightness: Brightness.dark
  );

  static final _fontWeightThin = FontWeight.w300;
  static final _fontWeighRegular = FontWeight.w400;
  static final _fontWeighMedium = FontWeight.w500;
  static final _fontWeighSemiBold = FontWeight.w600;
  static final _fontWeighBold = FontWeight.w700;

  // { TextStyle? body2, TextStyle? body1}
  static final TextTheme _textTheme = TextTheme(
    headline1: TextStyle(fontWeight: _fontWeighBold, fontSize: 26.0),
    headline2: TextStyle(fontWeight: _fontWeighBold, fontSize: 24.0),
    headline3: TextStyle(fontWeight: _fontWeighBold, fontSize: 22.0),
    headline4: TextStyle(fontWeight: _fontWeighBold, fontSize: 20.0),
    headline6: TextStyle(fontWeight: _fontWeighBold, fontSize: 16.0),
    headline5: TextStyle(fontWeight: _fontWeighMedium, fontSize: 14.0),

    subtitle1: TextStyle(fontWeight: _fontWeighMedium, fontSize: 16.0),
    subtitle2: TextStyle(fontWeight: _fontWeighMedium, fontSize: 14.0),

    bodyText1: TextStyle(fontWeight: _fontWeighRegular, fontSize: 16.0),
    bodyText2: TextStyle(fontWeight: _fontWeighRegular, fontSize: 14.0),

    caption: TextStyle(fontWeight: _fontWeighSemiBold, fontSize: 16.0),
    button: TextStyle(fontWeight: _fontWeightThin,fontSize: 14.0,height: 1.5),
    overline: TextStyle(fontWeight: _fontWeighMedium, fontSize: 12.0)
  );
}
