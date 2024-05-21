import 'package:flutter/material.dart';

class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Current Location',
                style: TextStyle(fontSize: 12, color: Colors.white)),
            Text('United States',
                style: TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBar(),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Recommendations for you',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            _buildRecommendedEventsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[200],
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        ),
      ),
    );
  }

  Widget _buildRecommendedEventsList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          _buildEventRow(),
          const SizedBox(height: 10),
          _buildEventRow(),
          const SizedBox(height: 10),
          _buildEventRow(),
          const SizedBox(height: 10),
          _buildEventRow(),
        ],
      ),
    );
  }

  Widget _buildEventRow() {
    return GestureDetector(
      onTap: () {
        // Add your navigation logic here
      },
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/event_img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Elevate: The Conference for Professional Growth',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 16),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        'Los Angeles',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      '\$120',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
