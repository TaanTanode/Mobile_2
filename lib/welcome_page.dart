import 'package:flutter/material.dart';
import 'package:mobile_2/about_page.dart';
import 'package:mobile_2/display_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = '';
  final _textController = TextEditingController();

  @override
  void initState(){
    super.initState();
    debugPrint('initstate');
    _output = 'Enter your name';
  }

  @override
  void dispose(){
    _textController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            tooltip: 'About Us',
            onPressed: () {
              Navigator.push(
                context,
              MaterialPageRoute(
                builder: (context) => const AboutPage(),
              ));
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Hello Welcome page (Stateful)'),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Enter Name',
                labelText: 'Name',
              ),
            ),
            Text(
              '${_output}',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 14,
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('presses button');
                setState(() {
                  _output = "Good Job kra koon";
                });
              },
              child: const Text('Click me'),
            ),
            ElevatedButton(
              onPressed: () {
                String input = _textController.text;
                int inputAge = 18;
                Navigator.push(
                  context,
                MaterialPageRoute(
                  builder: (context) => DisplayPage(
                    name: input,
                    age: inputAge,
                  ),
                )
                );
              },
              child: const Text('Display on Next Page'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/about',
                );
              },
              child: const Text('About Us (Named Route)'),
            ),
            const SizedBox(
              height: 14,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/display',
                );
              },
              child: const Text('Display (Named Route)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/list',
                );
              },
              child: const Text('List Page'),
            ),
          ],
        ),
      ),
    );
  }
}
