class User {
  String _email;
  String _noHp;
  String _nama;

  //! Konstruktor versi 1
  User(this._email, this._noHp, this._nama);

  //! Konstruktor versi 2: Konversi dari Map ke Note
  User.fromMap(Map<String, dynamic> map) {
    this._email = map['email'];
    this._noHp = map['no_hp'];
    this._nama = map['name'];
  }

  //! Getter dan Setter (Mengambil dan mengisi data ke dalam object)
  //? Getter
  String get email => _email;
  String get noHp => _noHp;
  String get nama => _nama;

 //? Setter
  set emailSet(String value) {
    _email = value;
  }

  //? Setter
  set noHpSet(String value) {
    _noHp = value;
  }

  //? Setter
  set namaSet(String value) {
    _nama = value;
  }

  //! Konversi dari Note ke Map

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['email'] = email;
    map['no_hp'] = noHp;
    map['nama'] = nama;
    return map;
  }

}