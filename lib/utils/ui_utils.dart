import 'package:flutter/material.dart';
import 'package:responsive_app/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;

  double deviceWidth = 0;
  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  } else {
    deviceWidth = mediaQuery.size.width;
  }

  if(deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }

  return DeviceScreenType.Mobile;
}
