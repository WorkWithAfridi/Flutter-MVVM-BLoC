import '../models/example-user_m.dart';

abstract class ExampleUserRepository {
  Future<List<ExampleUserModel>> getUsers();
  Future<ExampleUserModel> getUserById(int userId);
  Future<void> addUser(ExampleUserModel user);
  Future<void> updateUser(ExampleUserModel user);
  Future<void> deleteUser(int userId);
}
