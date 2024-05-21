import 'package:flutter/material.dart';
import 'package:imtixon_2/pages/filter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/map.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 50.0,
            left: 15.0,
            right: 15.0,
            child: SizedBox(
              height: 50.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search location',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 15.0,
            right: 15.0,
            child: Container(
              height: 120.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.location_pin, color: Colors.red),
                    title: Text('Big Red Location'),
                    subtitle: Text('Future Entrepreneur'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 150.0,
            right: 15.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FilterScreen()),
                );
              },
              child: const Icon(Icons.my_location),
            ),
          ),
        ],
      ),
    );
  }
}
