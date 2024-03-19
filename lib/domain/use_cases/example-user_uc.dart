import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../common/utilities/logger.dart';
import '../../data/remote/config/api_endpoints.dart';
import '../../data/remote/controller/network_c.dart';
import '../entities/example-user_e.dart';
import '../models/example-user_m.dart';
import '../repositories/example-user_r.dart';

class ExampleUserRepositoryApi implements ExampleUserRepository {
  final getIt = GetIt.instance;

  final List<ExampleUserModel> _users = [
    ExampleUserModel(id: "1", name: 'John Doe', email: 'john@example.com'),
    ExampleUserModel(id: "2", name: 'Jane Smith', email: 'jane@example.com'),
    // Add more users as needed
  ];

  @override
  Future<List<ExampleUserModel>> getUsers() async {
    NetworkController networkController = getIt.get<NetworkController>();
    // Simulate a network delay or async operation
    try {
      final result = await networkController.request(
        url: "${ApiEndPoints.baseUrl}some-url",
        method: Method.POST,
        params: {
          "some-data": "data",
        },
      );
      if (result != null && result is Response && result.statusCode == 200) {
        var data = result.data;
        logger.d(data);
        ExampleUserApiEntity userApiEntity = ExampleUserApiEntity.fromJson(data);

        if (userApiEntity.status == "success") {
          _users.add(
            ExampleUserModel(
              id: userApiEntity.data?.uuid ?? "",
              name: userApiEntity.data?.name ?? "",
              email: userApiEntity.data?.email,
            ),
          );
        }
      }
    } catch (err) {
      logger.d("An error occurred while trying to register your account. Please try again later!");
    }
    return _users;
  }

  @override
  Future<ExampleUserModel> getUserById(int userId) async {
    // Simulate a network delay or async operation
    await Future.delayed(const Duration(seconds: 1));

    // Find the user by ID
    ExampleUserModel? user = _users.firstWhere((user) => user.id == userId, orElse: () => ExampleUserModel(id: "-1", name: '', email: ''));
    return user;
  }

  @override
  Future<void> addUser(ExampleUserModel user) async {
    // Simulate a network delay or async operation
    await Future.delayed(const Duration(seconds: 1));

    // Add the user to the list
    _users.add(user);
  }

  @override
  Future<void> updateUser(ExampleUserModel user) async {
    // Simulate a network delay or async operation
    await Future.delayed(const Duration(seconds: 1));

    // Find and update the user in the list
    int index = _users.indexWhere((existingUser) => existingUser.id == user.id);
    if (index != -1) {
      _users[index] = user;
    }
  }

  @override
  Future<void> deleteUser(int userId) async {
    // Simulate a network delay or async operation
    await Future.delayed(const Duration(seconds: 1));

    // Remove the user from the list
    _users.removeWhere((user) => user.id == userId);
  }
}
