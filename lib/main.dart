import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App para treinar getx'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Obx(
                () => TextButton(
                  onPressed: () {
                    // Get.snackbar(
                    //   "Hi",
                    //   'This is a snackbar',
                    //   duration: Duration(seconds: 10),
                    //   snackPosition: SnackPosition.TOP,
                    //   backgroundColor: Colors.amber,
                    //   colorText: Colors.black,
                    //   shouldIconPulse: true,
                    //   messageText: Text(
                    //     'This is a snackbar',
                    //     style: TextStyle(fontWeight: FontWeight.bold),
                    //   ),
                    // );
                    //Get.defaultDialog(title: 'bolo');
                    increment();
                  },
                  child: Text(
                    '$count',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
