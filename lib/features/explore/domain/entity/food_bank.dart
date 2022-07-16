class FoodBank {
  String? status;
  String? message;
  List<Data>? data;

  FoodBank({this.status, this.message, this.data});

  FoodBank.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
    data = json["data"] == null
        ? null
        : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["status"] = status;
    data["message"] = message;
    if (this.data != null) {
      data["data"] = this.data?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? title;
  String? price;
  String? image;

  Data({this.title, this.price, this.image});

  Data.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    price = json["price"];
    image = json["image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["title"] = title;
    data["price"] = price;
    data["image"] = image;
    return data;
  }
}
