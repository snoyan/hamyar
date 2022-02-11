class Nurse {
  String? id;
  String? firstName;
  String? lastName;
  int? age;
  String? gender;
  String? email;
  String? phoneNumber;
  String? imageUrl;
  String? state;
  String? city;
  int? workExperience;
  String? workCondition;
  int? rate;
  String? created;

  Nurse({
    this.id,
    this.firstName,
    this.lastName,
    this.age,
    this.gender,
    this.email,
    this.phoneNumber,
    this.imageUrl,
    this.state,
    this.city,
    this.workExperience,
    this.workCondition,
    this.rate,
    this.created,
  });

  Nurse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    age = json['age'];
    gender = json['gender'];
    phoneNumber = json['phoneNumber'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['age'] = this.age;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['phoneNumber'] = this.phoneNumber;
    data['imageUrl'] = this.imageUrl;
    return data;
  }

  @override
  toString() => this.toJson().toString();
}
