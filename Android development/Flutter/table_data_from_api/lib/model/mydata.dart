class MyData {
  List<Content> content;
  Pageable pageable;
  int totalElements;
  int totalPages;
  bool last;
  bool first;
  Sort sort;
  int number;
  int numberOfElements;
  int size;
  bool empty;

  MyData(
      {this.content,
        this.pageable,
        this.totalElements,
        this.totalPages,
        this.last,
        this.first,
        this.sort,
        this.number,
        this.numberOfElements,
        this.size,
        this.empty});

  MyData.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      content = new List<Content>();
      json['content'].forEach((v) {
        content.add(new Content.fromJson(v));
      });
    }
    pageable = json['pageable'] != null
        ? new Pageable.fromJson(json['pageable'])
        : null;
    totalElements = json['totalElements'];
    totalPages = json['totalPages'];
    last = json['last'];
    first = json['first'];
    sort = json['sort'] != null ? new Sort.fromJson(json['sort']) : null;
    number = json['number'];
    numberOfElements = json['numberOfElements'];
    size = json['size'];
    empty = json['empty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.content != null) {
      data['content'] = this.content.map((v) => v.toJson()).toList();
    }
    if (this.pageable != null) {
      data['pageable'] = this.pageable.toJson();
    }
    data['totalElements'] = this.totalElements;
    data['totalPages'] = this.totalPages;
    data['last'] = this.last;
    data['first'] = this.first;
    if (this.sort != null) {
      data['sort'] = this.sort.toJson();
    }
    data['number'] = this.number;
    data['numberOfElements'] = this.numberOfElements;
    data['size'] = this.size;
    data['empty'] = this.empty;
    return data;
  }
}

class Content {
  bool resultUpdate;
  String collectionPointNameEn;
  String collectionPointNameBn;
  String passportNumber;
  String nidNumber;
  String labEn;
  String labBn;
  int labId;
  String userFullName;
  String userPhone;
  String divisionNameEn;
  String divisionNameBn;
  String districtNameEn;
  String districtNameBn;
  String upazilaNameEn;
  String upazilaNameBn;
  int collectionDate;
  int specimenId;
  String sampleId;
  int testDate;
  bool isResultUpdate;
  int resultId;
  int resultDbId;
  String resultEn;
  String resultBn;
  int userId;
  String userAddressId;
  String userAddress;
  int gender;
  String genderNameEn;
  String genderNameBn;
  int birthDate;
  int relationWithHouseholdHead;

  Content(
      {this.resultUpdate,
        this.collectionPointNameEn,
        this.collectionPointNameBn,
        this.passportNumber,
        this.nidNumber,
        this.labEn,
        this.labBn,
        this.labId,
        this.userFullName,
        this.userPhone,
        this.divisionNameEn,
        this.divisionNameBn,
        this.districtNameEn,
        this.districtNameBn,
        this.upazilaNameEn,
        this.upazilaNameBn,
        this.collectionDate,
        this.specimenId,
        this.sampleId,
        this.testDate,
        this.isResultUpdate,
        this.resultId,
        this.resultDbId,
        this.resultEn,
        this.resultBn,
        this.userId,
        this.userAddressId,
        this.userAddress,
        this.gender,
        this.genderNameEn,
        this.genderNameBn,
        this.birthDate,
        this.relationWithHouseholdHead});

  Content.fromJson(Map<String, dynamic> json) {
    resultUpdate = json['resultUpdate'];
    collectionPointNameEn = json['collection_point_name_en'];
    collectionPointNameBn = json['collection_point_name_bn'];
    passportNumber = json['passport_number'];
    nidNumber = json['nid_number'];
    labEn = json['lab_en'];
    labBn = json['lab_bn'];
    labId = json['lab_id'];
    userFullName = json['user_full_name'];
    userPhone = json['user_phone'];
    divisionNameEn = json['division_name_en'];
    divisionNameBn = json['division_name_bn'];
    districtNameEn = json['district_name_en'];
    districtNameBn = json['district_name_bn'];
    upazilaNameEn = json['upazila_name_en'];
    upazilaNameBn = json['upazila_name_bn'];
    collectionDate = json['collection_date'];
    specimenId = json['specimen_id'];
    sampleId = json['sample_id'];
    testDate = json['test_date'];
    isResultUpdate = json['is_result_update'];
    resultId = json['result_id'];
    resultDbId = json['result_db_id'];
    resultEn = json['result_en'];
    resultBn = json['result_bn'];
    userId = json['user_id'];
    // userAddressId = json['user_address_id'];
    userAddress = json['user_address'];
    gender = json['gender'];
    genderNameEn = json['gender_name_en'];
    genderNameBn = json['gender_name_bn'];
    birthDate = json['birth_date'];
    relationWithHouseholdHead = json['relation_with_household_head'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resultUpdate'] = this.resultUpdate;
    data['collection_point_name_en'] = this.collectionPointNameEn;
    data['collection_point_name_bn'] = this.collectionPointNameBn;
    data['passport_number'] = this.passportNumber;
    data['nid_number'] = this.nidNumber;
    data['lab_en'] = this.labEn;
    data['lab_bn'] = this.labBn;
    data['lab_id'] = this.labId;
    data['user_full_name'] = this.userFullName;
    data['user_phone'] = this.userPhone;
    data['division_name_en'] = this.divisionNameEn;
    data['division_name_bn'] = this.divisionNameBn;
    data['district_name_en'] = this.districtNameEn;
    data['district_name_bn'] = this.districtNameBn;
    data['upazila_name_en'] = this.upazilaNameEn;
    data['upazila_name_bn'] = this.upazilaNameBn;
    data['collection_date'] = this.collectionDate;
    data['specimen_id'] = this.specimenId;
    data['sample_id'] = this.sampleId;
    data['test_date'] = this.testDate;
    data['is_result_update'] = this.isResultUpdate;
    data['result_id'] = this.resultId;
    data['result_db_id'] = this.resultDbId;
    data['result_en'] = this.resultEn;
    data['result_bn'] = this.resultBn;
    data['user_id'] = this.userId;
    // data['user_address_id'] = this.userAddressId;
    data['user_address'] = this.userAddress;
    data['gender'] = this.gender;
    data['gender_name_en'] = this.genderNameEn;
    data['gender_name_bn'] = this.genderNameBn;
    data['birth_date'] = this.birthDate;
    data['relation_with_household_head'] = this.relationWithHouseholdHead;
    return data;
  }
}

class Pageable {
  Sort sort;
  int pageNumber;
  int pageSize;
  int offset;
  bool paged;
  bool unpaged;

  Pageable(
      {this.sort,
        this.pageNumber,
        this.pageSize,
        this.offset,
        this.paged,
        this.unpaged});

  Pageable.fromJson(Map<String, dynamic> json) {
    sort = json['sort'] != null ? new Sort.fromJson(json['sort']) : null;
    pageNumber = json['pageNumber'];
    pageSize = json['pageSize'];
    offset = json['offset'];
    paged = json['paged'];
    unpaged = json['unpaged'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sort != null) {
      data['sort'] = this.sort.toJson();
    }
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    data['offset'] = this.offset;
    data['paged'] = this.paged;
    data['unpaged'] = this.unpaged;
    return data;
  }
}

class Sort {
  bool sorted;
  bool unsorted;
  bool empty;

  Sort({this.sorted, this.unsorted, this.empty});

  Sort.fromJson(Map<String, dynamic> json) {
    sorted = json['sorted'];
    unsorted = json['unsorted'];
    empty = json['empty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sorted'] = this.sorted;
    data['unsorted'] = this.unsorted;
    data['empty'] = this.empty;
    return data;
  }
}