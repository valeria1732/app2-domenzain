import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const String name = "progress-indicator";

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Progress Indicator')),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Circular Progress Indicator'),
          SizedBox(height: 10),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black45,
          ),

          SizedBox(height: 30),
          Text('Circular y Linear Controlados'),

          StreamBuilder(
            stream: Stream.periodic(Duration(milliseconds: 300), (value) {
              return (value * 2) / 100;
            }).takeWhile((value)=> value < 1),
            builder: (context, snapshot) {

              final progressValue = snapshot.data ?? 0;

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  children: [
                    CircularProgressIndicator(
                      value: progressValue,
                      strokeWidth: 2,
                      backgroundColor: Colors.black45,
                    ),

                    SizedBox(width: 20),

                    Expanded(
                      child: LinearProgressIndicator(
                        value: progressValue,
                        backgroundColor: Colors.black45,
                      ),
                    ),
                    Text('${(progressValue * 100 ).toInt()} %'),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
