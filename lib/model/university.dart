
class University {
  late dynamic name;
  late dynamic domain;

  University(
    this.name,
    this.domain,
  );

  University.fromJson(Map<String, dynamic> json){
    name = json['name'];
    domain = json['domains'];
  }
}