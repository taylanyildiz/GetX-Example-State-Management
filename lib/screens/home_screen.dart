import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/states/counter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    this.title,
  }) : super(key: key);
  final String? title;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final count = Get.put(Counter());
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Counter>(
              builder: (_) => Text(
                '${_.count}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () => count.increment(),
              child: Text('Increment'),
              color: Colors.red,
              textColor: Colors.white,
            ),
            MaterialButton(
              onPressed: () => count.decrease(),
              child: Text('Decrease'),
              color: Colors.blue,
              textColor: Colors.white,
            ),
            Container(
              color: Colors.black,
              width: Get.width * .5,
              height: Get.width * .3,
            ),
            
          ],
        ),
      ),
    );
  }
}
