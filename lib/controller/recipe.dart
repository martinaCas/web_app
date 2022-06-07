class Recipe {
  int id;
  late final String title;
  late final String descript;
  final String path_image;
  late bool? isDeleted;

  Recipe(
    this.id,
    this.title,
    this.descript,
    this.path_image,
    this.isDeleted,
  );

  int getId() {
    return id;
  }

  String getTitle() {
    return title;
  }

  String getDescript() {
    return descript;
  }

  String getImage() {
    return path_image;
  }

  bool? getDeleted() {
    return isDeleted;
  }

  void setDeleted(bool delete) {
    isDeleted = delete;
  }

  void setId(int nId) {
    id = nId;
  }

  void setTitle(String nTitle) {
    title = nTitle;
  }

  void setDescript(String nDescript) {
    descript = nDescript;
  }
}
