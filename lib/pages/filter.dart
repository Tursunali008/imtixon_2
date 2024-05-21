import 'package:flutter/material.dart';



class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues _priceRange = const RangeValues(50, 300);
  String? _selectedDate = 'Today';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Category',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: [
                FilterChip(label: const Text('Music'), onSelected: (bool value) {}),
                FilterChip(label: const Text('Art'), onSelected: (bool value) {}),
                FilterChip(label: const Text('Sport'), onSelected: (bool value) {}),
                FilterChip(
                    label: const Text('Business'), onSelected: (bool value) {}),
                FilterChip(label: const Text('All'), onSelected: (bool value) {}),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Time & Date',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChoiceChip(
                  label: const Text('Today'),
                  selected: _selectedDate == 'Today',
                  onSelected: (bool selected) {
                    setState(() {
                      _selectedDate = selected ? 'Today' : null;
                    });
                  },
                ),
                ChoiceChip(
                  label: const Text('Tomorrow'),
                  selected: _selectedDate == 'Tomorrow',
                  onSelected: (bool selected) {
                    setState(() {
                      _selectedDate = selected ? 'Tomorrow' : null;
                    });
                  },
                ),
                ChoiceChip(
                  label: const Text('This week'),
                  selected: _selectedDate == 'This week',
                  onSelected: (bool selected) {
                    setState(() {
                      _selectedDate = selected ? 'This week' : null;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Location',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your location',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              onChanged: (value) {
                setState(() {
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Price (per range)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            RangeSlider(
              values: _priceRange,
              min: 0,
              max: 500,
              divisions: 100,
              labels: RangeLabels(
                '\$${_priceRange.start.round()}',
                '\$${_priceRange.end.round()}',
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _priceRange = values;
                });
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('RESET'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('APPLY'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
