import 'package:dev_assessment/core/network/network_client.dart';
import 'package:dev_assessment/features/explore/domain/entity/food_bank.dart';
import 'package:dio/dio.dart';

class ExploreService {
  final NetworkClient _networkClient;
  ExploreService({required NetworkClient networkService})
      : _networkClient = networkService;

  /// clock attendance
  Future<FoodBank> getFood() async {
    print('h');
    try {
      Response userData = await _networkClient.dio.get(
        _networkClient.baseUrl!,
      );
      print(userData.data);
      return FoodBank.fromJson(userData.data);
    } on DioError catch (e) {
      print(e);

      if (e.response != null) {
        print(e.response?.data);

        return e.response?.data;
      } else {
        print('error');
        // Error due to setting up or sending the request
        return e.response?.data;
      }
    }
  }
}
