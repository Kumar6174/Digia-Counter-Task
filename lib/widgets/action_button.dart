import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final String label;

  const ActionButton({
    Key? key,
    required this.onTap,
    required this.color,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final textColor = themeProvider.isDarkMode ? Colors.white : Colors.black;

    return GestureDetector(
      onTap: () {
        HapticFeedback.lightImpact();
        onTap();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
