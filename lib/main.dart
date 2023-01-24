import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openai_gpt3_api/openai_gpt3_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    void _callopenAI(String text) async {
      var api = GPT3("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");

      //var result = await api.search(...);
// var result = await api.completion(...);
// var result = await api.classification(...);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Form(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
