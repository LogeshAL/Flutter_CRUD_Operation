

import 'package:crudfunctions/db%20helper/repository.dart';
import 'package:crudfunctions/model/User.dart';

class UserService
{
  late Repository _repository;
  UserService(){
    _repository = Repository();
  }
  //Save User
  SaveUser (User user)async{
    return await _repository.insertData('users',user.userMap());
  }
  //Read all User
 readAllUsers()async{
    return await _repository.readData('users');
 }
//Edit User
  UpdateUser (User user)async {
    return await _repository.updateData('users', user.userMap());
  }

  deleteUser(userId) async {
    return await _repository.deleteDataById('users', userId);
  }
}