
package com.risedigital;

import android.text.format.DateFormat;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;

import java.util.HashMap;
import java.util.Map;

public class RNDeviceTimeFormatModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNDeviceTimeFormatModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNDeviceTimeFormat";
  }

  @Override
  public Map<String, Object> getConstants() {
    final Map<String, Object> constants = new HashMap<>();
    constants.put("is24Hour", DateFormat.is24HourFormat(reactContext));
    return constants;
  }
}