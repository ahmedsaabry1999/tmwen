import 'package:flutter/material.dart';

final Color? redColor = Colors.red[600];
final Color? greenColor = Colors.greenAccent[700];
final Color primaryColor = Colors.greenAccent[400]!;

const String ERROR_MESSAGE = 'Oops, something went wrong!';
const String INTERNET_ERROR_MESSAGE =
    'Please check your internet connection then try again.';
const String IMAGE_ERROR_MESSAGE = 'Couldn\'t load image';
const String File_ERROR_MESSAGE =
    'Couldn\'t open the File, Incompatibility issue';
const String FILE_FORMAT_MESSAGE =
    'Hint: Supported file formats: jpg, png, pdf';
const String appName = 'Tamween';

const String LOCALE_KEY = 'locale';
const String UID_KEY = 'UserId';
const String TOKEN_KEY = 'token';

const int MAX_FILE_SIZE = 1;
const String FILE_SIZE_ERROR_MSG = 'File size can\'t exceed $MAX_FILE_SIZE Mb';

const bool IS_END_DAY_HALF_LEAVE = true;

const int unauthenticatedStatusCode = 401;
const int geofencingPeriodicInterval = 5;

const double kBorderRadius = 8.0;
const double kCardElevation = 8.0;

final kEnabledBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius),
  borderSide: const BorderSide(
    width: 1,
    color: Colors.grey,
  ),
);

final kFocusedBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius),
  borderSide: BorderSide(
    width: 2,
    color: primaryColor,
  ),
);
