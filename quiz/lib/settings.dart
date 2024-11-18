import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Choose Theme:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {
                    themeProvider.setTheme(ThemeData.light());
                  },
                  child: const Text('Light Theme'),
                ),
                ElevatedButton(
                  onPressed: () {
                    themeProvider.setTheme(ThemeData.dark());
                  },
                  child: const Text('Dark Theme'),
                ),
                ElevatedButton(
                  onPressed: () {
                    themeProvider.setTheme(ThemeData(
                      primarySwatch: Colors.blueGrey,
                      scaffoldBackgroundColor: Colors.teal.shade50,
                    ));
                  },
                  child: const Text('Custom Theme'),
                ),
                ElevatedButton(
                  onPressed: () {
                    themeProvider.setTheme(ThemeData(
                      primaryColor: Colors.greenAccent, // Warna hijau neon
                      scaffoldBackgroundColor:
                          Colors.black, // Latar belakang hitam
                      textTheme: ThemeData.light().textTheme.apply(
                            bodyColor: Colors.greenAccent, // Warna teks putih
                            displayColor: Colors.green[400],
                          ),
                    ));
                  },
                  child: const Text('Neon Theme'),
                ),
                ElevatedButton(
                  onPressed: () {
                    themeProvider.setTheme(ThemeData(
                      primaryColor: Colors.brown[800]!,
                      scaffoldBackgroundColor: Colors.brown[200]!,
                      textTheme: ThemeData.light().textTheme.apply(
                            bodyColor: Colors.black,
                            displayColor: Colors.black,
                          ),
                    ));
                  },
                  child: const Text('Brown Mode'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Choose Font:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {
                    themeProvider.setFont('Roboto');
                  },
                  child: const Text('Roboto'),
                ),
                ElevatedButton(
                  onPressed: () {
                    themeProvider.setFont('Courier');
                  },
                  child: const Text('Courier'),
                ),
                ElevatedButton(
                  onPressed: () {
                    themeProvider.setFont('Times New Roman');
                  },
                  child: const Text('Times New Roman'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
