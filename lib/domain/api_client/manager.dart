
class DioManager{
  static const String BASE_URL = "http://172.16.3.52:8083/V1";
  static const int CONNECT_TIMEOUT = 10000;
  static const int RECEIVE_TIMEOUT = 10000;
  /// Создать один случай
  // 1. Частный статический экземпляр объекта
  static final DioManager _dioManager = DioManager._instance();

  // 2. Создать фабричный метод
  factory DioManager() => _dioManager;

  // 3. Личное имя конструктора
  DioManager._instance() {

    if (_dio == null) {
      /// Dio Configuration Основной атрибут
      BaseOptions _options = BaseOptions(
        baseUrl: BASE_URL,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        connectTimeout: CONNECT_TIMEOUT,
        receiveTimeout: RECEIVE_TIMEOUT,);
      _dio = Dio(_options);

      /// Перехватчик
      _dio.interceptors
        ..add(HeadersInterceptors())
        ..add(LogsInterceptor())
        ..add(ResponseInterceptors());
    }
  }
}
