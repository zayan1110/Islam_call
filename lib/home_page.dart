import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 111, 28, 2),
      body: content(context),
    );
  }

  Widget content(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('iclam call',
              style: TextStyle(
                fontSize: 20,
              )),
          Icon(
            Icons.mosque_sharp,
            size: 75,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Go The Qureen',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Listen To The Quran in a Better Way ',
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/ShowWepView'),
            child: Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
