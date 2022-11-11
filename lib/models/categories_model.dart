class CategoriesModel {
  int? statusCode;
  bool? success;
  List<Data>? data;
  String? message;

  CategoriesModel({this.statusCode, this.success, this.data, this.message});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status_code'] = statusCode;
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    return data;
  }
}

class Data {
  String? productsTypeID;
  String? productsTypeImage;
  String? productsTypeNameArabic;
  String? productsTypeNameAbri;
  String? productsTypeNameEnglish;
  String? productsTypeNameRussian;
  String? productsTypeStatus;
  String? loadInHomePage;
  String? productsTypeDiscription;
  String? lastUpdated;
  String? createdAtProductsTyps;

  Data(
      {this.productsTypeID,
      this.productsTypeImage,
      this.productsTypeNameArabic,
      this.productsTypeNameAbri,
      this.productsTypeNameEnglish,
      this.productsTypeNameRussian,
      this.productsTypeStatus,
      this.loadInHomePage,
      this.productsTypeDiscription,
      this.lastUpdated,
      this.createdAtProductsTyps});

  Data.fromJson(Map<String, dynamic> json) {
    productsTypeID = json['ProductsTypeID'];
    productsTypeImage = json['ProductsTypeImage'];
    productsTypeNameArabic = json['ProductsTypeNameArabic'];
    productsTypeNameAbri = json['ProductsTypeNameAbri'];
    productsTypeNameEnglish = json['ProductsTypeNameEnglish'];
    productsTypeNameRussian = json['ProductsTypeNameRussian'];
    productsTypeStatus = json['ProductsTypeStatus'];
    loadInHomePage = json['LoadInHomePage'];
    productsTypeDiscription = json['ProductsTypeDiscription'];
    lastUpdated = json['lastUpdated'];
    createdAtProductsTyps = json['CreatedAtProductsTyps'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ProductsTypeID'] = productsTypeID;
    data['ProductsTypeImage'] = productsTypeImage;
    data['ProductsTypeNameArabic'] = productsTypeNameArabic;
    data['ProductsTypeNameAbri'] = productsTypeNameAbri;
    data['ProductsTypeNameEnglish'] = productsTypeNameEnglish;
    data['ProductsTypeNameRussian'] = productsTypeNameRussian;
    data['ProductsTypeStatus'] = productsTypeStatus;
    data['LoadInHomePage'] = loadInHomePage;
    data['ProductsTypeDiscription'] = productsTypeDiscription;
    data['lastUpdated'] = lastUpdated;
    data['CreatedAtProductsTyps'] = createdAtProductsTyps;
    return data;
  }
}
