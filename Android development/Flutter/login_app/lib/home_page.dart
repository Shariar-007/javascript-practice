
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:login_app/myHomePageProvider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String access_token = '';
  // Map data;
  // List rowData;
  //
  // Future getData() async{
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   access_token = sharedPreferences.getString('token') ?? '';
  //   // print(access_token);
  //   String url =  'https://cmed-core-staging.cmedhealth.com/api/v6/statistics/corona/sample-collection/payment-report?'+
  //       'from_date=1598918400000&to_date=1600473600000&page=0&size=25&access_token='+ access_token;
  //
  //   final response = await http.get(url);
  //   var jsonResponse;
  //   if(response.statusCode == 200){
  //     jsonResponse = json.decode(response.body);
  //     data = json.decode(response.body);
  //     setState(() {
  //       rowData = data['payment_reports']['content'];
  //     });
  //     debugPrint(rowData.toString());
  //     // print(jsonResponse['payment_reports']['content']);
  //     // return jsonResponse['payment_reports']['content'];
  //   } else{
  //     print("Got Error: $response");
  //     // return response;
  //   }
  // }
  //
  //
  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }
  //
  // DataTable dataBody(){
  //   return DataTable(
  //     columns: [
  //       DataColumn(
  //         label: Text("First Name"),
  //         numeric: false,
  //         tooltip: "This is the First Name",
  //       ),
  //       DataColumn(
  //         label: Text("Last Name"),
  //         numeric: false,
  //         tooltip: "This is the Last Name",
  //       ),
  //     ],
  //     rows: <DataRow>[
  //       DataRow(
  //           cells: <DataCell>[
  //             DataCell(
  //                 Text("Pawan"),
  //                 showEditIcon: false
  //             ),
  //             DataCell(
  //                 Text("Kumar"),
  //                 showEditIcon: false
  //             )
  //           ]
  //       ),
  //       DataRow(
  //           cells: <DataCell>[
  //             DataCell(
  //                 Text("Pawan"),
  //                 showEditIcon: false
  //             ),
  //             DataCell(
  //                 Text("Kumar"),
  //                 showEditIcon: false
  //             )
  //           ]
  //       ),
  //     ]
  //   );
  // }
  //
  //
  // Widget bodyData() => DataTable(
  //   columns: <DataColumn>[
  //     DataColumn(
  //       label: Text("First Name"),
  //       numeric: false,
  //       onSort: (i,b) {},
  //       tooltip: "To display first name of the Name"
  //     ),
  //     DataColumn(
  //         label: Text("First Name"),
  //         numeric: false,
  //         onSort: (i,b) {},
  //         tooltip: "To display first name of the Name"
  //     ),
  //   ],
  //     rows: rowData.map((e) => DataRow(
  //       cells: [
  //         DataCell(
  //             Text(e.firstName),
  //             showEditIcon: false,
  //             placeholder: false
  //         ),
  //         DataCell(
  //           Text(e.lastName),
  //           showEditIcon: false,
  //             placeholder: false
  //         ),
  //       ])).toList()
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Table Example"),
      ),
      body: ChangeNotifierProvider <MyHomePageProvider>(
        create: (context) => MyHomePageProvider(),
        child: Consumer<MyHomePageProvider>(
          builder: (context, provider, child){
             if(provider.data == null){
               provider.getData(context);
               return Center(child: CircularProgressIndicator());
             }
             return SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: SingleChildScrollView(
                 child: DataTable(
                   columns: [
                     DataColumn(label: Text('First Name'), tooltip: 'represent first name of the user'),
                     DataColumn(label: Text('Last Name'), tooltip: 'represent last name of the user'),
                     DataColumn(label: Text('Phone'), tooltip: 'represent phone of the user'),
                   ],
                   rows: provider.data.paymentReports.content.map((data) =>
                       DataRow(
                           cells: [
                             DataCell(Text(data.firstName)),
                             DataCell(Text(data.lastName == null? "": data.lastName)),
                             DataCell(Text(data.phone == null? "": data.phone)),
                           ]
                       )
                   ).toList(),
                 ),
               ),
             );
          },
        ),
      )
    );
  }
}
