// To parse this JSON data, do
//
//     final modelCompany = modelCompanyFromJson(jsonString);

import 'dart:convert';

ModelCompany modelCompanyFromJson(String str) => ModelCompany.fromJson(json.decode(str));

String modelCompanyToJson(ModelCompany data) => json.encode(data.toJson());

class ModelCompany {
  ModelCompany({
    this.status,
    this.data,
    this.message,
  });

  String status;
  Data data;
  String message;

  factory ModelCompany.fromJson(Map<String, dynamic> json) => ModelCompany(
    status: json["status"],
    data: Data.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data.toJson(),
    "message": message,
  };
}

class Data {
  Data({
    this.info,
    this.companies,
  });

  Info info;
  List<Company> companies;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    info: Info.fromJson(json["info"]),
    companies: List<Company>.from(json["companies"].map((x) => Company.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "info": info.toJson(),
    "companies": List<dynamic>.from(companies.map((x) => x.toJson())),
  };
}

class Company {
  Company({
    this.id,
    this.name,
    this.productsCount,
    this.orderCount,
    this.image,
  });

  int id;
  String name;
  int productsCount;
  int orderCount;
  String image;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    id: json["id"],
    name: json["name"],
    productsCount: json["productsCount"],
    orderCount: json["orderCount"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "productsCount": productsCount,
    "orderCount": orderCount,
    "image": image,
  };
}

class Info {
  Info({
    this.companyName,
    this.companyCount,
  });

  String companyName;
  int companyCount;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    companyName: json["Company_name"],
    companyCount: json["Company_count"],
  );

  Map<String, dynamic> toJson() => {
    "Company_name": companyName,
    "Company_count": companyCount,
  };
}
