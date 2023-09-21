class UserModel {
  //int? albumId;
  int? id;
  String? title;
  String? type;
  String? photo_slug;

  //String? email;
  //String? firstName;
  //String? lastName;
  //String? avatar;

  UserModel({ this.id, this.title,this.type,this.photo_slug});
  //UserModel({this.id, this.email, this.firstName, this.lastName, this.avatar});

  UserModel.fromJson(Map<String, dynamic> json) {
    //albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    type = json['type'];
    photo_slug = json['photo_slug'];
    //___email = json['email'];
    //firstName = json['first_name'];
    //lastName = json['last_name'];
    //avatar = json['avatar'];
  }
}