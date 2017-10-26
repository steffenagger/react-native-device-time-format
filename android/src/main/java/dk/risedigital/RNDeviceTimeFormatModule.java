
package dk.risedigital;

import android.text.format.DateFormat;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableMap;

public class RNDeviceTimeFormatModule extends ReactContextBaseJavaModule {

  @Override
  public String getName() {
    return "RNDeviceTimeFormat";
  }

  private final ReactApplicationContext reactContext;

  public RNDeviceTimeFormatModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @ReactMethod
  public void is24HourFormat(final Promise promise) {
    try {
      WritableMap map = Arguments.createMap();
      map.putBoolean("is24HourFormat", DateFormat.is24HourFormat(reactContext));

      promise.resolve(map);
    } catch (Exception ex) {
      promise.reject(ex);
    }
  }
}