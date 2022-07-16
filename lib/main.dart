import 'package:dev_assessment/core/data/provider.dart';
import 'package:dev_assessment/core/environment/evn.dart';
import 'package:dev_assessment/features/profile/presentation/pages/profile.dart';
import 'package:dev_assessment/tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'core/injection/injection_container.dart';
import 'features/explore/presentation/pages/explore.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await initializeCore(environment: Environment.staging);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: Providers.getProviders,
      child: ScreenUtilInit(
        designSize: const Size(419, 848),
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: child,
          );
        },
        child: TabWidget(),
      ),
    );
  }
}

