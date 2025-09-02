import 'package:counter_app_with_provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                                        context.read<CounterClass>().decrement();


                  },
                  icon: const Icon(
                    Icons.remove,
                    size: 50,
                  )),
              Consumer<CounterClass>(
                builder: (context,provider,child) {
                  return  Text(
                    provider.counter.toString(),
                    style: TextStyle(fontSize: 50, color: Colors.black),
                  );
                }
              ),
              IconButton(
                  onPressed: () {
                    context.read<CounterClass>().increment();
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 50,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
