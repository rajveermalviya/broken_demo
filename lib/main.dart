import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const BrokenDemoApp());
}

class BrokenDemoApp extends StatelessWidget {
  const BrokenDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Broken Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BorkenDemoHomePage(),
    );
  }
}

class BorkenDemoHomePage extends StatefulWidget {
  const BorkenDemoHomePage({super.key});

  @override
  State<BorkenDemoHomePage> createState() => _BorkenDemoHomePageState();
}

class _BorkenDemoHomePageState extends State<BorkenDemoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Broken Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () async {
                final path = await getApplicationSupportDirectory();
                print("path_provider: $path");
              },
              child:
                  const Text('path_provider: getApplicationSupportDirectory()'),
            ),
          ],
        ),
      ),
    );
  }
}
