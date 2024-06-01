class burgermodel {
  List<Data>? data;

  burgermodel({this.data});

  burgermodel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? title;
  String? image;
  String? subTitle;
  String? description;
  int? quantity;
  bool? isFav;
  String? price;

  Data(
      {this.title,
      this.image,
      this.subTitle,
      this.description,
      this.quantity,
      this.isFav,
      this.price});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    subTitle = json['subTitle'];
    description = json['description'];
    quantity = json['quantity'];
    isFav = json['isFav'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['image'] = this.image;
    data['subTitle'] = this.subTitle;
    data['description'] = this.description;
    data['quantity'] = this.quantity;
    data['isFav'] = this.isFav;
    data['price'] = this.price;
    return data;
  }
}
