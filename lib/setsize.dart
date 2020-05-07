import 'package:flutter/material.dart';

class SetSize {
  static SetSize _instance;
  static const int defaultHeight = 1080;
  static const int defaultWidth = 1920;

  num screenwidthPx;
  num screenHeightPx;

  bool allowFontSaclling;

  static MediaQueryData _mediaQueryData;
  static double _screenWidth;
  static double _screenHeight;
  static double _pixelRatio;
  static double _statusBarheight;
  static double _bottomBarHeight;
  static double _textScaleFactor;

  SetSize._();

  factory SetSize() {
    return _instance;
  }
  static void init(BuildContext context,
      {num width = defaultWidth,
      num height = defaultHeight,
      bool allowFontScaling = false}) {
    if (_instance == null) {
      _instance = SetSize._();
    }
    _instance.screenwidthPx = width;
    _instance.screenHeightPx = height;
    _instance.allowFontSaclling = allowFontScaling;

    MediaQueryData mediaQuery = MediaQuery.of(context);
    _mediaQueryData = mediaQuery;
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
    _textScaleFactor = mediaQuery.textScaleFactor;
    _bottomBarHeight = mediaQuery.padding.bottom;
    _statusBarheight = mediaQuery.padding.top;
    _pixelRatio = mediaQuery.devicePixelRatio;
  }

  static MediaQueryData get mediaQueryData => _mediaQueryData;
  static double get screenWidthDp => _screenWidth;
  static double get screenHeighthDp => _screenHeight;
  static double get screenWidthPx => _screenWidth * _pixelRatio;
  static double get screenHeighthPx => _screenHeight * _pixelRatio;
  static double get pixeRatio => _pixelRatio;
  static double get statusBarHeight => _statusBarheight;
  static double get bottomBarheight => _bottomBarHeight;
  static double get textSacleFactor => _textScaleFactor;

  double get scaleWidth => _screenWidth / screenwidthPx;
  double get scaleHeight => _screenHeight / screenHeightPx;
  double get scaleText => scaleWidth;

  num setWidth(num width) => width * scaleWidth;
  num setHeight(num height) => height * scaleHeight;
  num setFont(num fontSize) => allowFontSaclling
      ? (fontSize * scaleText)
      : (fontSize * scaleText) / _textScaleFactor;

  // num setFont(
  //         num fontSize, bool allowFontSacllingSelf) =>
  //     allowFontSacllingSelf == null
  //         ? (allowFontSaclling
  //             ? (fontSize * scaleText)
  //             : (fontSize * scaleText) / _textScaleFactor)
  //         : (allowFontSaclling
  //             ? (fontSize * scaleText)
  // : (fontSize * scaleText) / _textScaleFactor);
}
