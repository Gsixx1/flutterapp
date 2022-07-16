import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Learn Flutter Page!.'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint('Action');
              },
              icon: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/tractor.jpg'),
            // const SizedBox(child: Text('this is great')),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.lightGreenAccent[400],
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('this is great is working');
                },
                child: const Center(
                  child: Text(
                    'this is great',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('You have pressed the elevated button');
              },
              child: const Text('This is an elevated button'),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: isSwitch ? Colors.green : Colors.yellowAccent),
              onPressed: () {
                debugPrint('You have pressed the Outlined button');
              },
              child: const Text('This is an Outlined button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('You have pressed the Text button');
              },
              child: const Text(
                'This is an Text button',
                style: TextStyle(color: Colors.black38),
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is a row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.local_fire_department, color: Colors.lime),
                  Text('Row widget'),
                  Icon(Icons.local_fire_department, color: Color(0xFF64B5F6)),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckBox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckBox = newBool;
                  });
                }),
            Image.network(
              'https://thumbs.dreamstime.com/b/albert-einstein-wax-model-standing-blackboard-45372905.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
