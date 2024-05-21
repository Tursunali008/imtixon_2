import 'package:flutter/material.dart';
import 'package:imtixon_2/pages/follow_page.dart';

class EventDetailsPage extends StatefulWidget {
  const EventDetailsPage({super.key});

  @override
  _EventDetailsPageState createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Event Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/event_img.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'InnovateX: The Future of IT',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(width: 10),
                      Text('10 December, 2023'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(width: 10),
                      Text('Tuesday, 4:00 PM - 6:00 PM'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 10),
                      Text('Gala Convention Center'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'assets/images/Ashfak.jpg',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text('Ashfak Sayem'),
                      const Spacer(),
                      Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xffFE7474),
                          border: Border.all(color: Colors.grey),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                        ),
                        child: FollowButton(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'About Event',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Enjoy your favorite dishes and a lovely fancy dinner and have a great time. Food from local food trucks will be available for purchase.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Buy Ticket \$120",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward_rounded),
            ],
          ),
        ),
      ),
    );
  }
}

class FollowButton extends StatefulWidget {
  @override
  _FollowButtonState createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          counter++;
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FollowPage()),
        );
      },
      child: Text("Follow $counter"),
    );
  }
}
