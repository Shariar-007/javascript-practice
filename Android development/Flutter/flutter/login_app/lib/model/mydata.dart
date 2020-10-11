class MyData {
  PaymentReports paymentReports;

  MyData({this.paymentReports});

  MyData.fromJson(Map<String, dynamic> json) {
    paymentReports = json['payment_reports'] != null
        ? new PaymentReports.fromJson(json['payment_reports'])
        : null;
  }
}

class PaymentReports {
  List<Content> content;

  PaymentReports({this.content});

  PaymentReports.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      content = new List<Content>();
      json['content'].forEach((v) {
        content.add(new Content.fromJson(v));
      });
    }
  }
}

class Content {
  String address;
  String appointmentId;
  String assignedAgentId;
  int collectionDate;
  String collectionPointName;
  String district;
  String division;
  String firstName;
  String gateway;
  String generatedId;
  String lastName;
  String nid;
  String passport;
  String paymentStatus;
  String phone;
  String tnxCode;
  String upazila;
  int userId;

  Content(
      {this.address,
        this.appointmentId,
        this.assignedAgentId,
        this.collectionDate,
        this.collectionPointName,
        this.district,
        this.division,
        this.firstName,
        this.gateway,
        this.generatedId,
        this.lastName,
        this.nid,
        this.passport,
        this.paymentStatus,
        this.phone,
        this.tnxCode,
        this.upazila,
        this.userId});

  Content.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    appointmentId = json['appointmentId'];
    assignedAgentId = json['assignedAgentId'];
    collectionDate = json['collectionDate'];
    collectionPointName = json['collectionPointName'];
    district = json['district'];
    division = json['division'];
    firstName = json['firstName'];
    gateway = json['gateway'];
    generatedId = json['generatedId'];
    lastName = json['lastName'];
    nid = json['nid'];
    passport = json['passport'];
    paymentStatus = json['paymentStatus'];
    phone = json['phone'];
    tnxCode = json['tnxCode'];
    upazila = json['upazila'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['appointmentId'] = this.appointmentId;
    data['assignedAgentId'] = this.assignedAgentId;
    data['collectionDate'] = this.collectionDate;
    data['collectionPointName'] = this.collectionPointName;
    data['district'] = this.district;
    data['division'] = this.division;
    data['firstName'] = this.firstName;
    data['gateway'] = this.gateway;
    data['generatedId'] = this.generatedId;
    data['lastName'] = this.lastName;
    data['nid'] = this.nid;
    data['passport'] = this.passport;
    data['paymentStatus'] = this.paymentStatus;
    data['phone'] = this.phone;
    data['tnxCode'] = this.tnxCode;
    data['upazila'] = this.upazila;
    data['userId'] = this.userId;
    return data;
  }
}