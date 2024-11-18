import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme.dart';
import 'settings.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Main Screen',
          style: TextStyle(fontFamily: themeProvider.font),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Menambahkan padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                style: TextStyle(
                  fontFamily: themeProvider.font,
                  fontSize: 24,
                ),
                textAlign:
                    TextAlign.center, // Mengatur teks menjadi rata tengah
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsScreen()),
                  );
                },
                child: Text(
                  'Go to Settings',
                  style: TextStyle(fontFamily: themeProvider.font),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
