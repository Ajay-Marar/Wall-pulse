class Photomodel {
  String imgSrc;
  String photoname;

  Photomodel({
    required this.photoname,
    required this.imgSrc,
  });

  static Photomodel fromAPI2App(Map<String, dynamic> photomap) {
    return Photomodel(
      photoname: photomap["photographer"],
      imgSrc: (photomap["src"])["portrait"],
    );
  }
}
