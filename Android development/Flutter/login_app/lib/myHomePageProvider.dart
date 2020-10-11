
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:login_app/model/mydata.dart';


class MyHomePageProvider extends ChangeNotifier{
  String access_token = '';
  MyData data;
  List rowData;

  Future getData(context) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    access_token = sharedPreferences.getString('token') ?? '';
    // print(access_token);
    String url =  'https://cmed-core-staging.cmedhealth.com/api/v6/statistics/corona/sample-collection/payment-report?'+
        'from_date=1598918400000&to_date=1600473600000&page=0&size=25&access_token='+ access_token;

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