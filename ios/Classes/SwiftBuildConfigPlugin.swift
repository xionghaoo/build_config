import Flutter
import UIKit

public class SwiftBuildConfigPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "com.pgy/build_config", binaryMessenger: registrar.messenger())
    let instance = SwiftBuildConfigPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "versionName":
        result(Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String)
        break;
    case "versionCode":
        result(Int(Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String))
        break;
    default:
        result(FlutterMethodNotImplemented)
    }
  }
}
