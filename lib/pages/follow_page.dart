import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FollowPage extends StatefulWidget {
  const FollowPage({super.key});

  @override
  State<FollowPage> createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Icon(
              Icons.more_vert_outlined,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
                'assets/images/Ashfak.jpg'), // Replace with your image URL
          ),
          const SizedBox(height: 10),
          const Text('Avrilak Sayron',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          const Text('2,358 | 348 | 13 ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
          const Text('   Followers  | Follwing | Events ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(text: 'Aboute'),
              Tab(text: 'Events'),
              Tab(text: 'Reviews'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                PostsTab(),
                EventsTab(),
                ReviewsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PostsTab extends StatelessWidget {
  const PostsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.all(14.0),
        child: Text(
          'About',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 14.0),
        child: RichText(
          text: const TextSpan(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 14),
        child: Text(
          "Read more...",
          style: TextStyle(color: Colors.blue),
        ),
      )
    ]);
  }
}

class EventsTab extends StatelessWidget {
  const EventsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        EventCard(title: 'Event 1', date: '12 May 2024'),
        EventCard(title: 'Event 2', date: '15 May 2024'),
        EventCard(title: 'Event 2', date: '15 May 2024'),
        EventCard(title: 'Event 2', date: '15 May 2024'),
        EventCard(title: 'Event 2', date: '15 May 2024'),
        EventCard(title: 'Event 2', date: '15 May 2024'),
        EventCard(title: 'Event 2', date: '15 May 2024'),
        EventCard(title: 'Event 2', date: '15 May 2024'),
        EventCard(title: 'Event 2', date: '15 May 2024'),
        EventCard(title: 'Event 2', date: '15 May 2024'),
        EventCard(title: 'Event 2', date: '15 May 2024'),
        EventCard(title: 'Event 2', date: '15 May 2024'),
        EventCard(title: 'Event 2', date: '15 May 2024'),
        EventCard(title: 'Event 2', date: '15 May 2024'),
      ],
    );
  }
}

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ReviewCard(reviewer: 'John Doe', review: 'Great event!'),
        ReviewCard(reviewer: 'Jane Smith', review: 'Very informative.'),
        ReviewCard(reviewer: 'John Doe', review: 'Great event!'),
        ReviewCard(reviewer: 'Jane Smith', review: 'Very informative.'),
        ReviewCard(reviewer: 'John Doe', review: 'Great event!'),
        ReviewCard(reviewer: 'Jane Smith', review: 'Very informative.'),
        ReviewCard(reviewer: 'John Doe', review: 'Great event!'),
        ReviewCard(reviewer: 'Jane Smith', review: 'Very informative.'),
      ],
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String date;

  const EventCard({super.key, required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        leading: Image.asset(
          'assets/images/calendar_page.jpg',
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        title: const Text(
          'IT Networking Event',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          '21st May, 2024',
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String reviewer;
  final String review;

  const ReviewCard({super.key, required this.reviewer, required this.review});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/avatar.jpg'),
        ),
        title:
            Text(reviewer, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(review),
      ),
    );
  }
}
