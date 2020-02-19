import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    String id;
    String nama;
    dynamic gender;
    String email;
    String noHp;
    String aktiv;
    dynamic status;
    dynamic pendidikan;
    dynamic tanggalLahir;
    String tipe;
    String idLondri;
    String alamat;
    dynamic propinsi;
    dynamic kotaKab;
    dynamic kota;
    dynamic kecamatan;
    dynamic kelurahan;
    dynamic kodepos;
    DateTime createdAt;
    dynamic updatedAt;

    User({
        this.id,
        this.nama,
        this.gender,
        this.email,
        this.noHp,
        this.aktiv,
        this.status,
        this.pendidikan,
        this.tanggalLahir,
        this.tipe,
        this.idLondri,
        this.alamat,
        this.propinsi,
        this.kotaKab,
        this.kota,
        this.kecamatan,
        this.kelurahan,
        this.kodepos,
        this.createdAt,
        this.updatedAt,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        nama: json["nama"],
        gender: json["gender"],
        email: json["email"],
        noHp: json["no_hp"],
        aktiv: json["aktiv"],
        status: json["status"],
        pendidikan: json["pendidikan"],
        tanggalLahir: json["tanggal_lahir"],
        tipe: json["tipe"],
        idLondri: json["id_londri"],
        alamat: json["alamat"],
        propinsi: json["propinsi"],
        kotaKab: json["kota_kab"],
        kota: json["kota"],
        kecamatan: json["kecamatan"],
        kelurahan: json["kelurahan"],
        kodepos: json["kodepos"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "gender": gender,
        "email": email,
        "no_hp": noHp,
        "aktiv": aktiv,
        "status": status,
        "pendidikan": pendidikan,
        "tanggal_lahir": tanggalLahir,
        "tipe": tipe,
        "id_londri": idLondri,
        "alamat": alamat,
        "propinsi": propinsi,
        "kota_kab": kotaKab,
        "kota": kota,
        "kecamatan": kecamatan,
        "kelurahan": kelurahan,
        "kodepos": kodepos,
        "created_at": createdAt.toString(),
        "updated_at": updatedAt,
    };


    Map<String, dynamic> toJsonRegis() => {
        "nama": nama,
        "email": email,
        "no_hp": noHp,
    };
}
