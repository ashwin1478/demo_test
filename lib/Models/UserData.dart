class UserData {
  String name;
  String email;
  String uid;

  UserData({this.name, this.email, this.uid});

  UserData.fromJson(Map<dynamic, dynamic> json) {
    name = json['Name'];
    email = json['Email'];
    uid = json['Uid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Email'] = this.email;
    data['Uid'] = this.uid;
    return data;
  }
}