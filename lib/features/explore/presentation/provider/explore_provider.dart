import 'package:dev_assessment/features/explore/data/datasource/explore_service.dart';
import 'package:dev_assessment/features/explore/domain/entity/food_bank.dart';
import 'package:flutter/cupertino.dart';

enum ExploreEnum { initial, busy, idle }

class ExploreProvider extends ChangeNotifier {
  ExploreEnum exploreEnum =
      ExploreEnum.initial;

  List<Data>? food = [];

  final ExploreService _exploreService;
  ExploreProvider(this._exploreService);

  getFood() async {

    try {
      exploreEnum = ExploreEnum.busy;
      notifyListeners();

      final result =
          await _exploreService.getFood();
      exploreEnum = ExploreEnum.idle;
      food = result.data!;
      notifyListeners();
    } catch (e) {
      exploreEnum = ExploreEnum.idle;
      notifyListeners();
    }
  }


}
