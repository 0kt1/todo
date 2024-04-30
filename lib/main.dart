import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:untitled/graphql/client.dart';
import 'package:untitled/todoscreen.dart';
//import 'package:untitled/addwork.dart';
// import 'nothing.dart';


void main() async{

  // WidgetsFlutterBinding.ensureInitialized();
  // await FlutterLocalNotificationsPlugin().initialize(
  //   InitializationSettings(
  //     android: const AndroidInitializationSettings('ic_stat_justwater'),
  //     // iOS: IOSInitializationSettings(
  //     //   requestBadgePermission: true,
  //     //   requestSoundPermission: true,
  //     //   requestAlertPermission: true,
  //     // ),
  //   ),
  //   // onSelectNotification: onSelectNotification,
  // );

  runApp(
    GraphQLProvider(
      client: client,
      child: const MaterialApp(
      home: ToDo(),
        ),
    ));
}



