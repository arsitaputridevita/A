class kategori {
  bool? success;
  String? message;
  List<Datakategori>? data;

  kategori({this.success, this.message, this.data});

  kategori.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Datakategori>[];
      json['data'].forEach((v) {
        data!.add(new Datakategori.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Datakategori {
  int? id;
  String? namaKategori;
  String? slug;
  String? createdAt;
  String? updatedAt;

  Datakategori({this.id, this.namaKategori, this.slug, this.createdAt, this.updatedAt});

  Datakategori.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    namaKategori = json['nama_kategori'];
    slug = json['slug'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama_kategori'] = this.namaKategori;
    data['slug'] = this.slug;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}