class CategoriesDetailsModel {
  int? statusCode;
  bool? success;
  List<Data>? data;
  String? message;

  CategoriesDetailsModel(
      {this.statusCode, this.success, this.data, this.message});

  CategoriesDetailsModel.fromJson(Map<String, dynamic> json) {
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
  String? s0;
  String? s1;
  String? productsID;
  String? sellerID;
  String? productsName;
  String? productsPrice;
  String? productsOfferPrice;
  String? currencyID;
  String? productsStatus;
  String? productsDescription;
  String? productsWordsToSearch;
  String? productsBarcode;
  String? productsTypeID;
  String? subCategoryId;
  String? productsInsuranceCompany;
  String? productsInsuranceDuration;
  String? productsQuantity;
  String? productsFirstImage;
  String? productsSecondImage;
  String? productsThirdImage;
  String? productsFourthmage;
  String? productsFifthImage;
  String? dealsOfToday;
  String? productRate;
  String? productTotalRates;
  String? productTotalNum;
  String? lastUpdated;
  String? createdAtProducts;
  String? productsTypeImage;
  String? productsTypeNameArabic;
  String? productsTypeNameAbri;
  String? productsTypeNameEnglish;
  String? productsTypeNameRussian;
  String? productsTypeStatus;
  String? loadInHomePage;
  String? productsTypeDiscription;
  String? createdAtProductsTyps;
  String? sellerFirstName;
  String? sellerLastName;
  String? sellerEmail;
  String? sellerPassword;
  String? sellerCountryID;
  String? sellerStoreName;
  String? sellerCompanyLegelName;
  String? sellerCompanyPhoneNumber;

  Data(
      {this.s0,
      this.s1,
      this.productsID,
      this.sellerID,
      this.productsName,
      this.productsPrice,
      this.productsOfferPrice,
      this.currencyID,
      this.productsStatus,
      this.productsDescription,
      this.productsWordsToSearch,
      this.productsBarcode,
      this.productsTypeID,
      this.subCategoryId,
      this.productsInsuranceCompany,
      this.productsInsuranceDuration,
      this.productsQuantity,
      this.productsFirstImage,
      this.productsSecondImage,
      this.productsThirdImage,
      this.productsFourthmage,
      this.productsFifthImage,
      this.dealsOfToday,
      this.productRate,
      this.productTotalRates,
      this.productTotalNum,
      this.lastUpdated,
      this.createdAtProducts,
      this.productsTypeImage,
      this.productsTypeNameArabic,
      this.productsTypeNameAbri,
      this.productsTypeNameEnglish,
      this.productsTypeNameRussian,
      this.productsTypeStatus,
      this.loadInHomePage,
      this.productsTypeDiscription,
      this.createdAtProductsTyps,
      this.sellerFirstName,
      this.sellerLastName,
      this.sellerEmail,
      this.sellerPassword,
      this.sellerCountryID,
      this.sellerStoreName,
      this.sellerCompanyLegelName,
      this.sellerCompanyPhoneNumber});

  Data.fromJson(Map<String, dynamic> json) {
    s0 = json['0'];
    s1 = json['1'];
    productsID = json['ProductsID'];
    sellerID = json['SellerID'];
    productsName = json['ProductsName'];
    productsPrice = json['ProductsPrice'];
    productsOfferPrice = json['ProductsOfferPrice'];
    currencyID = json['CurrencyID'];
    productsStatus = json['ProductsStatus'];
    productsDescription = json['ProductsDescription'];
    productsWordsToSearch = json['ProductsWordsToSearch'];
    productsBarcode = json['ProductsBarcode'];
    productsTypeID = json['ProductsTypeID'];
    subCategoryId = json['SubCategoryId'];
    productsInsuranceCompany = json['ProductsInsuranceCompany'];
    productsInsuranceDuration = json['ProductsInsuranceDuration'];
    productsQuantity = json['ProductsQuantity'];
    productsFirstImage = json['ProductsFirstImage'];
    productsSecondImage = json['ProductsSecondImage'];
    productsThirdImage = json['ProductsThirdImage'];
    productsFourthmage = json['ProductsFourthmage'];
    productsFifthImage = json['ProductsFifthImage'];
    dealsOfToday = json['DealsOfToday'];
    productRate = json['ProductRate'];
    productTotalRates = json['ProductTotalRates'];
    productTotalNum = json['ProductTotalNum'];
    lastUpdated = json['lastUpdated'];
    createdAtProducts = json['CreatedAtProducts'];
    productsTypeImage = json['ProductsTypeImage'];
    productsTypeNameArabic = json['ProductsTypeNameArabic'];
    productsTypeNameAbri = json['ProductsTypeNameAbri'];
    productsTypeNameEnglish = json['ProductsTypeNameEnglish'];
    productsTypeNameRussian = json['ProductsTypeNameRussian'];
    productsTypeStatus = json['ProductsTypeStatus'];
    loadInHomePage = json['LoadInHomePage'];
    productsTypeDiscription = json['ProductsTypeDiscription'];
    createdAtProductsTyps = json['CreatedAtProductsTyps'];
    sellerFirstName = json['SellerFirstName'];
    sellerLastName = json['SellerLastName'];
    sellerEmail = json['SellerEmail'];
    sellerPassword = json['SellerPassword'];
    sellerCountryID = json['SellerCountryID'];
    sellerStoreName = json['SellerStoreName'];
    sellerCompanyLegelName = json['SellerCompanyLegelName'];
    sellerCompanyPhoneNumber = json['SellerCompanyPhoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['0'] = s0;
    data['1'] = s1;
    data['ProductsID'] = productsID;
    data['SellerID'] = sellerID;
    data['ProductsName'] = productsName;
    data['ProductsPrice'] = productsPrice;
    data['ProductsOfferPrice'] = productsOfferPrice;
    data['CurrencyID'] = currencyID;
    data['ProductsStatus'] = productsStatus;
    data['ProductsDescription'] = productsDescription;
    data['ProductsWordsToSearch'] = productsWordsToSearch;
    data['ProductsBarcode'] = productsBarcode;
    data['ProductsTypeID'] = productsTypeID;
    data['SubCategoryId'] = subCategoryId;
    data['ProductsInsuranceCompany'] = productsInsuranceCompany;
    data['ProductsInsuranceDuration'] = productsInsuranceDuration;
    data['ProductsQuantity'] = productsQuantity;
    data['ProductsFirstImage'] = productsFirstImage;
    data['ProductsSecondImage'] = productsSecondImage;
    data['ProductsThirdImage'] = productsThirdImage;
    data['ProductsFourthmage'] = productsFourthmage;
    data['ProductsFifthImage'] = productsFifthImage;
    data['DealsOfToday'] = dealsOfToday;
    data['ProductRate'] = productRate;
    data['ProductTotalRates'] = productTotalRates;
    data['ProductTotalNum'] = productTotalNum;
    data['lastUpdated'] = lastUpdated;
    data['CreatedAtProducts'] = createdAtProducts;
    data['ProductsTypeImage'] = productsTypeImage;
    data['ProductsTypeNameArabic'] = productsTypeNameArabic;
    data['ProductsTypeNameAbri'] = productsTypeNameAbri;
    data['ProductsTypeNameEnglish'] = productsTypeNameEnglish;
    data['ProductsTypeNameRussian'] = productsTypeNameRussian;
    data['ProductsTypeStatus'] = productsTypeStatus;
    data['LoadInHomePage'] = loadInHomePage;
    data['ProductsTypeDiscription'] = productsTypeDiscription;
    data['CreatedAtProductsTyps'] = createdAtProductsTyps;
    data['SellerFirstName'] = sellerFirstName;
    data['SellerLastName'] = sellerLastName;
    data['SellerEmail'] = sellerEmail;
    data['SellerPassword'] = sellerPassword;
    data['SellerCountryID'] = sellerCountryID;
    data['SellerStoreName'] = sellerStoreName;
    data['SellerCompanyLegelName'] = sellerCompanyLegelName;
    data['SellerCompanyPhoneNumber'] = sellerCompanyPhoneNumber;
    return data;
  }
}
