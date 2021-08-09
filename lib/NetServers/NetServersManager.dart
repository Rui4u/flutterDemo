import 'package:dio/dio.dart';
import 'NetServerConfig.dart';

class NetServerManeger {
  static final options = BaseOptions(
      baseUrl: NetServerConfig.baseUrl,
      sendTimeout: NetServerConfig.timeOutTime);

  static request(String url,
      {String method = 'get',
        Map<String, dynamic>? params,
        Interceptor? interceptor}) {

    final option = Options(method: method,headers: params);

    final inter = InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      handler.next(options);
    }, onResponse: (Response e, ResponseInterceptorHandler handler) {
      handler.next(e);
    }, onError: (DioError e, ErrorInterceptorHandler handler) {
      handler.next(e);
    });

    List<Interceptor> list = [inter];
    if (interceptor != null) {
      list.add(interceptor);
    }
    final dio = Dio(options);
    dio
        .request(url,options: option)
        .then((repose) {})
        .catchError((error) {})
        .whenComplete(() {});
  }
}
