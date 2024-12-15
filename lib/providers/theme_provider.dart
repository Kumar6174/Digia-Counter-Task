import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeProvider() {
    _loadTheme(); // Load theme on initialization
  }

  // Toggle the theme and save to storage
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    _saveTheme(); // Save the new theme state
    notifyListeners();
  }

  // Save theme state to SharedPreferences
  Future<void> _saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', _isDarkMode);
  }

  // Load theme state from SharedPreferences
  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool('isDarkMode') ?? false; // Default to light mode
    notifyListeners(); // Notify listeners to rebuild widgets with the loaded theme
  }
}
