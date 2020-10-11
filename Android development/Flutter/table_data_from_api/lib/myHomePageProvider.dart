
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// import 'package:table_data_from_api/model/mydata.dart';
import 'package:table_data_from_api/model/mydata.dart';


class MyHomePageProvider extends ChangeNotifier{
  String access_token = '';
  MyData data;
  List rowData;

  Future getData(context) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    access_token = sharedPreferences.getString('token') ?? '';
    // print(access_token);
    String url =  'https://cmed-core-staging.cmedhealth.com/api/v6/statistics/corona/sample-collection/lab-result-report?'
        'from_date=1443442335000&page=0&size=25&to_date=1601295135000&access_token='+ access_token;

    final response = await http.get(url);
    if(response.statusCode == 200){
      var myjson = json.decode(response.body);
      this.data = MyData.fromJson(myjson);
      // debugPrint(this.data.toString());
      this.notifyListeners();
    } else{
      print("Got Error: $response");
      // return response;
    }
  }
}