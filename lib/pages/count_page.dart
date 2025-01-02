import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/count_model.dart';
import 'package:provider/provider.dart';

class CountPage extends StatelessWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CountModel>(
        builder: (context, value, index) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.deepPurple[300],
                title: const Center(child: Text('Flutter Demo Home Page')),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  final counter = context.read<CountModel>();
                  counter.increment();
                },
                child: const Icon(Icons.add),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'You have pushed the button this many times',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      value.count.toString(),
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
