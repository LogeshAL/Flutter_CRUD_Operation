class User{
  int? id;
  String? name;
  String? contact;
  String? descriptipm;

  userMap(){
    var mapping=Map<String,dynamic>();
    mapping['id']= id?? null;
    mapping['name']=name!;
    mapping['contact']=contact!;
    mapping['description']=descriptipm;
    return mapping;


  }

}