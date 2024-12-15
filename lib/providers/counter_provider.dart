import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  Color _backgroundColor = Colors.blueAccent;

  int get count => _count;
  Color get backgroundColor => _backgroundColor;

  CounterProvider() {
    _loadCounter();
  }

  Future<void> _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    _count = prefs.getInt('counter') ?? 0;
    notifyListeners();
  }

  Future<void> _saveCounter() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', _count);
  }

  void increment() {
    _count++;
    _changeBackgroundColor();
    _saveCounter();
    notifyListeners();
  }

  void decrement() {
    if (_count > 0) {
      _count--;
      _changeBackgroundColor();
      _saveCounter();
    }
    notifyListeners();
  }

  void reset() {
    _count = 0;
    _changeBackgroundColor();
    _saveCounter();
    notifyListeners();
  }

  void _changeBackgroundColor() {
    final random = Random();
    _backgroundColor = Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }
}
