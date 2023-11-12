// // ignore_for_file: depend_on_referenced_packages
//
// import 'dart:developer';
// import 'dart:io';
// import 'package:flutter/foundation.dart';
// import 'package:path/path.dart';
// import 'package:dio/dio.dart';
// import '../error/exceptions.dart';
// import '../network/api_config.dart';
// import '../network/status_code.dart';
// import '../widgets/alerts.dart';
// import 'cache_helper.dart';
// import 'const.dart';
// import 'di.dart';
//
// abstract class DioHelper {
//   Future<Response> postData({
//     required String url,
//     Map<String, dynamic>? query,
//     required dynamic data,
//     Options? options,
//   });
//
//   Future<Response> getData({
//     required String url,
//     Options? options,
//     Map<String, dynamic>? query,
//   });
//
//   Future<Response> deleteData({
//     required String url,
//     Map<String, dynamic>? query,
//     dynamic data,
//   });
//
//   Future<Response> putData({
//     required String url,
//     Map<String, dynamic>? query,
//     required dynamic data,
//   });
//
//   Future<Response> uploadFiles({
//     required String apiEndPoint,
//     required List<DioUploadFileModel> filesModel,
//     void Function(int received, int total)? sendProgress,
//     List<Map<String, String>>? body,
//     CancelToken? cancelToken,
//   });
// }
//
// class DioImpl extends DioHelper {
//   final Dio dio = Dio(
//     BaseOptions(
//       baseUrl: Uri.parse(ApiConfig.baseUrl).toString(),
//       receiveDataWhenStatusError: true,
//       // connectTimeout: 30000,
//       // receiveTimeout: 30000,
//       // sendTimeout: 30000,
//     ),
//   );
//
//   @override
//   Future<Response> getData({
//     required String url,
//     Options? options,
//     Map<String, dynamic>? query,
//   }) async {
//     dio.options.headers = {
//       // 'X-localization': appLanguage,
//       'Content-Type': 'application/json',
//       // if (token != null) 'token': token,
//       if (token != null) 'Authorization': 'Bearer $token',
//     };
//     try {
//       return await dio.get(Uri.parse(url).toString(), queryParameters: query);
//     } on DioError catch (e) {
//       log('Error Get: ${e.response?.data}');
//       return _handleDioError(e);
//     }
//   }
//
//   @override
//   Future<Response> postData({
//     required String url,
//     Map<String, dynamic>? query,
//     required dynamic data,
//     Options? options,
//   }) async {
//     // final baseToken = base64.encode(
//     //   utf8.encode('${ApiConfig.userName}:${ApiConfig.password}'),
//     // );
//     if (token != null) {
//       dio.options.headers = {
//         'lang': appLanguage,
//         'Content-Type': 'application/json',
//         if (token != null) 'Authorization': 'Bearer $token',
//         // 'lang': appLanguage,
//         // 'Content-Type': 'application/json',
//         // 'Authorization': 'Basic $baseToken',
//       };
//     }
//     try {
//       return await dio.post(
//         Uri.parse(url).toString(),
//         queryParameters: query,
//         data: data,
//         options: options,
//       );
//     } on DioError catch (e) {
//       log('Error Post statusCode: ${e.response?.statusCode}', name: 'Error Post statusCode, dio_helper.dart');
//       log('Error Post: ${e.response?.data}', name: 'Error Post, dio_helper.dart');
//       log('runtimeType Error Post: ${e.response?.runtimeType}', name: 'Error Post, dio_helper.dart');
//       return _handleDioError(e);
//     }
//   }
//
//   @override
//   Future<Response> deleteData({
//     required String url,
//     Map<String, dynamic>? query,
//     dynamic data,
//   }) async {
//     dio.options.headers = {
//       'Content-Type': 'application/json',
//       // if (token != null) 'token': token
//       if (token != null) 'Authorization': 'Bearer $token',
//     };
//     try {
//       return await dio.delete(
//         Uri.parse(url).toString(),
//         queryParameters: query,
//         data: data,
//       );
//     } on DioError catch (e) {
//       log('Error Delete: ${e.response?.data}', name: 'dio_helper.dart');
//       // Alerts.showToast(
//       //     text: e.response?.data['message'], state: ToastStates.error);
//       return _handleDioError(e);
//     }
//   }
//
//   @override
//   Future<Response> putData({
//     required String url,
//     Map<String, dynamic>? query,
//     required dynamic data,
//   }) async {
//     dio.options.headers = {
//       'lang': 'en',
//       'Content-Type': 'application/json',
//       // if (token != null) 'token': token
//       if (token != null) 'Authorization': 'Bearer $token',
//     };
//     try {
//       return await dio.put(
//         url,
//         queryParameters: query,
//         data: data,
//       );
//     } on DioError catch (e) {
//       log('Error Put: ${e.response?.data}', name: 'dio_helper.dart');
//       // Alerts.showToast(
//       //     text: e.response?.data['message'], state: ToastStates.error);
//       return _handleDioError(e.response?.data);
//     }
//   }
//
//   @override
//   Future<Response> uploadFiles({
//     required String apiEndPoint,
//     required List<DioUploadFileModel> filesModel,
//     void Function(int received, int total)? sendProgress,
//     List<Map<String, String>>? body,
//     CancelToken? cancelToken,
//   }) async {
//     final mapOfData = <String, dynamic>{};
//     for (final file in filesModel) {
//       final _file = File(file.filePath);
//       final fileName = basename(_file.path);
//       mapOfData.addAll({
//         file.fileFiledName: await MultipartFile.fromFile(
//           _file.path,
//           filename: fileName,
//         ),
//       });
//     }
//     final formData = FormData.fromMap(mapOfData);
//
//     if (body != null) {
//       final x = body.map((e) => MapEntry(e.keys.first, e.values.first));
//       formData.fields.addAll(x);
//     }
//     final Response response = await dio.post(apiEndPoint,
//         data: formData, onSendProgress: sendProgress, cancelToken: cancelToken);
//     // throwIfNoSuccess(response);
//     return response;
//   }
//
//   dynamic _handleDioError(DioError error) {
//     switch (error.type) {
//       case DioErrorType.connectTimeout:
//       case DioErrorType.sendTimeout:
//       case DioErrorType.receiveTimeout:
//         log('${error.response}', name: 'FetchDataException, dio_helper.dart');
//         throw const FetchDataException();
//       case DioErrorType.response:
//         log('${error.response?.data.toString()}', name: 'DioErrorType.response, dio_helper.dart');
//         Alerts.showToast(
//           text: '${error.response?.data['error']['message']} \n Status Code: ${error.response?.statusCode}',
//           status: ToastStatus.error,
//         );
//         switch (error.response?.statusCode) {
//           case StatusCode.badRequest:
//             log('${error.response?.data.toString()}', name: 'BadRequestException, dio_helper.dart');
//             throw const BadRequestException();
//           case StatusCode.unauthorized:
//             di<CacheHelper>().removeData(key: 'token');
//             // _navigation.navigateTo(false, const LoginScreen());
//             if (kDebugMode) {
//               print(error.response?.data);
//               print(error.response);
//               print('${error.response?.data['message']}');
//             }
//             log('${error.response?.data.toString()}', name: 'UnauthorizedException, dio_helper.dart');
//             throw UnauthorizedException('${error.response?.data['message']}');
//           case StatusCode.forbidden:
//             if (kDebugMode) {
//               log(error.response?.data);
//               log('Error Response: ${error.response}', name: 'ForbiddenException, dio_helper.dart');
//               log('${error.response?.data['message']}');
//             }
//             log('${error.response?.data.toString()}', name: 'ForbiddenException, dio_helper.dart');
//             throw ForbiddenException('${error.response?.data['message']}');
//           case StatusCode.notFound:
//             log('${error.response?.data.toString()}', name: 'NotFoundException, dio_helper.dart');
//             throw const NotFoundException();
//           case StatusCode.confilct:
//             log('${error.response?.data.toString()}', name: 'ConflictException, dio_helper.dart');
//             throw const ConflictException();
//           case StatusCode.internalServerError:
//             log('${error.response?.data.toString()}', name: 'InternalServerErrorException, dio_helper.dart');
//             throw const InternalServerErrorException();
//           case StatusCode.toManyRequests:
//             log('${error.response?.data.toString()}', name: 'ToManyRequestsException, dio_helper.dart');
//             throw const ToManyRequestsException();
//         }
//         break;
//       case DioErrorType.cancel:
//         break;
//       case DioErrorType.other:
//         log(error.message, name: 'dioError other, dio_helper.dart');
//     }
//   }
// }
//
// class CustomDio {
//   late Dio dio;
//
//   CustomDio() {
//     dio = Dio();
//     dio.options.baseUrl = "YOUR_BASE_URL";
//     dio.options.validateStatus = (_) => true;
//     dio.options.headers = {'authorization': "my awesome token"};
//     dio.options.sendTimeout = 10000;
//     dio.options.receiveTimeout = 10000;
//     dio.options.connectTimeout = 10000;
//   }
//
//   // notes
//   // onSendProgress onReceiveProgress cancelToken and Download Will have another video to explain
//
//   Future<Response> send(
//       {required String reqMethod,
//       required String path,
//       Function(int count, int total)? onSendProgress,
//       Function(int count, int total)? onReceiveProgress,
//       CancelToken? cancelToken,
//       Map<String, dynamic>? body,
//       Map<String, dynamic>? query}) async {
//     late Response res;
//
//     try {
//       switch (reqMethod.toUpperCase()) {
//         case 'GET':
//           res = await dio.get(
//             path,
//             cancelToken: cancelToken,
//             queryParameters: query,
//           );
//           break;
//         case 'POST':
//           res = await dio.post(
//             path,
//             data: body,
//             onReceiveProgress: onReceiveProgress,
//             onSendProgress: onSendProgress,
//             cancelToken: cancelToken,
//             queryParameters: query,
//           );
//           break;
//         case 'PUT':
//           res = await dio.put(
//             path,
//             data: body,
//             onSendProgress: onSendProgress,
//             onReceiveProgress: onReceiveProgress,
//             cancelToken: cancelToken,
//             queryParameters: query,
//           );
//           break;
//         case 'PATCH':
//           res = await dio.patch(
//             path,
//             data: body,
//             onSendProgress: onSendProgress,
//             onReceiveProgress: onReceiveProgress,
//             cancelToken: cancelToken,
//             queryParameters: query,
//           );
//           break;
//         case 'DELETE':
//           res = await dio.delete(
//             path,
//             data: body,
//             cancelToken: cancelToken,
//             queryParameters: query,
//           );
//           break;
//         default:
//           throw UnimplementedError();
//       }
//       throwIfNoSuccess(res);
//       return res;
//     } on DioError catch (err) {
//       if (err.type == DioErrorType.other ||
//           err.type == DioErrorType.connectTimeout ||
//           err.type == DioErrorType.receiveTimeout) {
//         throw ("you don't have intent connection or server down");
//       } else {
//         throw (res.data.toString());
//       }
//     } catch (err) {
//       rethrow;
//     } finally {
//       dio.close();
//     }
//   }
//
//   Future<Response> uploadFiles(
//       {required String apiEndPoint,
//       required List<DioUploadFileModel> filesModel,
//       void Function(int received, int total)? sendProgress,
//       List<Map<String, String>>? body,
//       CancelToken? cancelToken}) async {
//     final mapOfData = <String, dynamic>{};
//     for (final file in filesModel) {
//       final _file = File(file.filePath);
//       final fileName = basename(_file.path);
//       mapOfData.addAll({
//         file.fileFiledName: await MultipartFile.fromFile(
//           _file.path,
//           filename: fileName,
//         ),
//       });
//     }
//     final formData = FormData.fromMap(mapOfData);
//
//     if (body != null) {
//       final x = body.map((e) => MapEntry(e.keys.first, e.values.first));
//       formData.fields.addAll(x);
//     }
//     final Response response = await dio.post(apiEndPoint,
//         data: formData, onSendProgress: sendProgress, cancelToken: cancelToken);
//     throwIfNoSuccess(response);
//     return response;
//   }
//
//   Future<Response> uploadFile(
//       {required String apiEndPoint,
//       required String filePath,
//       void Function(int received, int total)? sendProgress,
//       List<Map<String, String>>? body,
//       CancelToken? cancelToken}) async {
//     final File file = File(filePath);
//     final String fileName = basename(file.path);
//     final FormData data = FormData.fromMap({
//       "file": await MultipartFile.fromFile(
//         file.path,
//         filename: fileName,
//       ),
//     });
//     if (body != null) {
//       final x = body.map((e) => MapEntry(e.keys.first, e.values.first));
//       data.fields.addAll(x);
//     }
//     final Response response = await dio.post(apiEndPoint,
//         data: data, onSendProgress: sendProgress, cancelToken: cancelToken);
//     throwIfNoSuccess(response);
//     return response;
//   }
//
//   Future<Response> uploadBytes(
//       {required String apiEndPoint,
//       required Uint8List bytes,
//       required String bytesExtension,
//       void Function(int received, int total)? sendProgress,
//       List<Map<String, String>>? body,
//       CancelToken? cancelToken}) async {
//     //if the file is image then app .png
//     final FormData data = FormData.fromMap({
//       "file": MultipartFile.fromBytes(bytes, filename: "xxx.$bytesExtension"),
//     });
//     if (body != null) {
//       final x = body.map((e) => MapEntry(e.keys.first, e.values.first));
//       data.fields.addAll(x);
//     }
//     final Response response = await dio.post(apiEndPoint,
//         data: data, onSendProgress: sendProgress, cancelToken: cancelToken);
//     throwIfNoSuccess(response);
//     return response;
//   }
//
//   void throwIfNoSuccess(Response response) {
//     if (response.statusCode! > 300) {
//       final errorMsg = response.data.toString();
//       throw (errorMsg);
//     }
//   }
//
//   Future<Response> download(
//       {required String path,
//       void Function(int received, int total)? sendProgress,
//       required String filePath,
//       CancelToken? cancelToken}) async {
//     final res = await dio.download(
//       path,
//       filePath,
//       cancelToken: cancelToken,
//       onReceiveProgress: sendProgress,
//     );
//     return res;
//   }
// }
//
// class DioUploadFileModel {
//   final String filePath;
//   final String fileFiledName;
//
//   const DioUploadFileModel({
//     required this.filePath,
//     required this.fileFiledName,
//   });
// }
