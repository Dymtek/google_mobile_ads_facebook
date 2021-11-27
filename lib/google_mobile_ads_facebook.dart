// Copyright 2021 Taeho Kim <jyte82@gmail.com>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import 'package:flutter/services.dart';

class GoogleMobileAdsFacebook {
  static const MethodChannel _channel =
      MethodChannel('plugins.androidhuman.com/google_mobile_ads_facebook');

  /// Sets whether Audience Network can serve personalized ads.
  /// You should call this method before the [GoogleMobileAds.instance.initialize()] call.
  ///
  /// This method is no-op on Android.
  static Future<void> setAdvertiserTrackingEnabled(bool enabled) async {
    return await _channel
        .invokeMethod<void>('FBAdSettings#setAdvertiserTrackingEnabled', {
      'enabled': enabled,
    });
  }
}
