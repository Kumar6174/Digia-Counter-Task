<!DOCTYPE html>
<html lang="en">

<h1>Enhanced Counter App</h1>
<p>An enhanced and responsive counter app built with <strong>Flutter</strong>. It showcases state management using the <strong>Provider</strong> package and implements features like dark mode, dynamic layout for portrait/landscape orientations, and persistent storage using <strong>SharedPreferences</strong>.</p>

<h2>Features</h2>
<ul>
    <li><strong>Increment, Decrement, Reset Counter:</strong> Tap buttons to increase, decrease, or reset the counter value.</li>
    <li><strong>Responsive Design:</strong> Dynamically adjusts the layout for portrait and landscape modes.</li>
    <li><strong>Dark Mode Support:</strong> Toggle between light and dark themes, with the choice saved across app restarts.</li>
    <li><strong>Random Background Colors:</strong> Generates random background gradients on counter changes.</li>
    <li><strong>Persistent State:</strong> Saves the counter value and theme preference using <code>SharedPreferences</code> for persistence across app restarts.</li>
</ul>

<h2>Screenshots</h2>
<h3>Portrait Mode</h3>
<img src="https://via.placeholder.com/300x600.png?text=Portrait+Mode" alt="Portrait Mode">
<h3>Landscape Mode</h3>
<img src="https://via.placeholder.com/600x300.png?text=Landscape+Mode" alt="Landscape Mode">

<h2>Architecture</h2>
<p>This app uses a <strong>Provider-based architecture</strong> for clean and maintainable state management.</p>

<h3>1. State Management</h3>
<ul>
    <li><strong>CounterProvider:</strong>
        <ul>
            <li>Manages the counter value and background color logic.</li>
            <li>Persists counter state using <code>SharedPreferences</code>.</li>
        </ul>
    </li>
    <li><strong>ThemeProvider:</strong>
        <ul>
            <li>Manages light/dark theme state.</li>
            <li>Persists theme preference using <code>SharedPreferences</code>.</li>
        </ul>
    </li>
</ul>

<h3>2. Responsive UI</h3>
<ul>
    <li><strong>Portrait Mode:</strong> Counter displayed at the top, with buttons below.</li>
    <li><strong>Landscape Mode:</strong> Counter and buttons displayed side by side.</li>
</ul>

<h3>3. Directory Structure</h3>
<pre>
lib/
├── main.dart                  # App entry point
├── providers/
│   ├── counter_provider.dart  # State management for counter
│   ├── theme_provider.dart    # State management for theme
├── screens/
│   ├── counter_page.dart      # Counter screen
├── widgets/
│   ├── action_button.dart     # Reusable button widget
</pre>

<h2>Getting Started</h2>

<h3>Prerequisites</h3>
<ol>
    <li><strong>Flutter SDK:</strong> Install the Flutter SDK: <a href="https://docs.flutter.dev/get-started/install" target="_blank">Flutter Installation Guide</a></li>
    <li><strong>Dart:</strong> Ensure Dart is installed as part of Flutter.</li>
</ol>

<h3>Clone the Repository</h3>
<pre><code>git clone &lt;repository_url&gt;
cd enhanced-counter-app
</code></pre>

<h3>Run the App</h3>
<ol>
    <li>Install dependencies:
        <pre><code>flutter pub get</code></pre>
    </li>
    <li>Run the app:
        <pre><code>flutter run</code></pre>
    </li>
</ol>

<h2>How It Works</h2>

<h3>Counter Management</h3>
<ul>
    <li>The app starts with the saved counter value (or 0 if none exists).</li>
    <li>Increment, decrement, or reset the counter using the buttons.</li>
    <li>Counter updates trigger a random background gradient.</li>
</ul>

<h3>Theme Management</h3>
<ul>
    <li>Toggle the theme using the button in the app bar.</li>
    <li>The selected theme persists across app restarts.</li>
</ul>

<h3>Responsive Layout</h3>
<ul>
    <li><strong>Portrait Mode:</strong> Counter is displayed at the top with buttons below.</li>
    <li><strong>Landscape Mode:</strong> Counter and buttons are arranged side by side for better use of space.</li>
</ul>

<h2>Packages Used</h2>
<table>
    <thead>
        <tr>
            <th>Package</th>
            <th>Purpose</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>provider</code></td>
            <td>State management for counter and theme providers.</td>
        </tr>
        <tr>
            <td><code>shared_preferences</code></td>
            <td>Persistent storage for counter value and theme.</td>
        </tr>
    </tbody>
</table>

<h2>Contributing</h2>
<ol>
    <li>Fork the repository.</li>
    <li>Create a new feature branch:
        <pre><code>git checkout -b feature/your-feature</code></pre>
    </li>
    <li>Commit your changes:
        <pre><code>git commit -m "Add your message"</code></pre>
    </li>
    <li>Push to the branch:
        <pre><code>git push origin feature/your-feature</code></pre>
    </li>
    <li>Open a Pull Request.</li>
</ol>

<h2>License</h2>
<p>This project is licensed under the MIT License. See the <code>LICENSE</code> file for details.</p>

</body>
</html>
