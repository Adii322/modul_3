import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Cuaca",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Text(
            "Malang",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 90),
          const Text(
            "25°",
            style: TextStyle(fontSize: 90),
          ),
          const SizedBox(height: 100),
          // Row untuk 3 hari
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              WeatherItem(day: "Minggu", icon: Icons.sunny, temp: "20°C"),
              WeatherItem(day: "Senin", icon: Icons.cloudy_snowing, temp: "23°C"),
              WeatherItem(day: "Selasa", icon: Icons.cloud, temp: "22°C"),
            ],
          )
        ],
      ),
    );
  }
}

class WeatherItem extends StatelessWidget {
  final String day;
  final IconData icon;
  final String temp;

  const WeatherItem({
    super.key,
    required this.day,
    required this.icon,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(day, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        Icon(icon, size: 40, color: Colors.black),
        const SizedBox(height: 8),
        Text(temp, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}