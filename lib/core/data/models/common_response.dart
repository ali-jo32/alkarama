class CommonResponse<T> {
  int? statusCode;
  late String error;
  T? data;

  CommonResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    if (getStatus) {
      data = json['response']['data'];
    } else {
      if (json['response']['error'].toString().isNotEmpty) {
        error = json['response']['error'];
      } else {
        switch (statusCode) {
          case 400:
            error = '400';
            break;
          case 401:
            error = '401';
            break;
          case 403:
            error = '403';
            break;
          case 404:
            error = '404';
            break;

          default:
            error = 'Something went wrong';
            break;
        }
      }
    }
  }

  // bool getStatus() {
  //   return statusCode.toString().startsWith('2');
  // }

  bool get getStatus => statusCode.toString().startsWith('2');
}