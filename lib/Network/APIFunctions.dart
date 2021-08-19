import 'dart:developer';

// import 'package:demo_api_test/Models/CovStatsModelList.dart';
import 'package:demo_api_test/Models/DemoListModel.dart';
import 'package:dio/dio.dart';

import 'APIUrls.dart';

class APICall {
  late Response response;
  Dio dio = Dio();

  Future<TestListModel> getTestList() async {
    log("Check API Caller");
    response = await dio.get('${APIUrls.BaseURL}');
    return TestListModel.fromJson(response.data);
  }
}

// class APICallCovStats {
//   late Response response;
//   Dio dio = Dio();
//   Future<CovStatsModelList> getCovStatsModelList() async {
//     log("API call Success");
//     response = await dio.get('${APIUrls.CovURL}');
//     return CovStatsModelList.fromJson(response.data);
//   }
// }
