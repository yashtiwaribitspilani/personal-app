import 'package:flutter/material.dart';
import 'package:personal_app/screens/long_goals.dart';
import 'package:personal_app/screens/reminder.dart';
import 'package:personal_app/screens/weekly_goals.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 210, 185, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 155, 97, 255),
        title: Text('Give full reign to your suffering'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.purple),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Reminder(),
                    ),
                  );
                },
                child: const Text(
                  'REMINDERS!',
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Weekly(),
                    ),
                  );
                },
                child: const Text(
                  'Weekly Goals',
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LongGoals(),
                  ),
                );
              },
              child: const Text(
                'Long Term Goals',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
