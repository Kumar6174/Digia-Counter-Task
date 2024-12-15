import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';
import '../providers/theme_provider.dart';
import '../widgets/action_button.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Digia Counter App"),
        actions: [
          IconButton(
            icon: Icon(
              themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: themeProvider.toggleTheme,
          ),
        ],
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              counterProvider.backgroundColor,
              Colors.white,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: Text(
                  counterProvider.count.toString(),
                  key: ValueKey<int>(counterProvider.count),
                  style: const TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ActionButton(
                onTap: counterProvider.increment,
                color: Colors.green,
                label: "Increment",
              ),
              const SizedBox(height: 20),
              ActionButton(
                onTap: counterProvider.decrement,
                color: Colors.red,
                label: "Decrement",
              ),
              const SizedBox(height: 20),
              ActionButton(
                onTap: counterProvider.reset,
                color: Colors.blue,
                label: "Reset",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
