//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<pointer_interceptor_ios/PointerInterceptorIosPlugin.h>)
#import <pointer_interceptor_ios/PointerInterceptorIosPlugin.h>
#else
@import pointer_interceptor_ios;
#endif

#if __has_include(<webview_flutter_wkwebview/FLTWebViewFlutterPlugin.h>)
#import <webview_flutter_wkwebview/FLTWebViewFlutterPlugin.h>
#else
@import webview_flutter_wkwebview;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [PointerInterceptorIosPlugin registerWithRegistrar:[registry registrarForPlugin:@"PointerInterceptorIosPlugin"]];
  [FLTWebViewFlutterPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTWebViewFlutterPlugin"]];
}

@end
