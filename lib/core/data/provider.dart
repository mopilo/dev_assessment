import 'package:dev_assessment/core/injection/injection_container.dart';
import 'package:dev_assessment/features/explore/presentation/provider/explore_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
class Providers {
  static List<SingleChildWidget> getProviders = [
    ChangeNotifierProvider(
        create: (_) => ExploreProvider(inject()))
  ];
}
