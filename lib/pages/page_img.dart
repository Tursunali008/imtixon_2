import 'package:flutter/material.dart';
import 'package:imtixon_2/pages/login_page.dart';

class EventScreens extends StatefulWidget {
  const EventScreens({Key? key}) : super(key: key);

  @override
  _EventScreensState createState() => _EventScreensState();
}

class _EventScreensState extends State<EventScreens> {
  final PageController _pageController = PageController();

  final List<Map<String, String>> screens = [
    {
      'image': 'assets/images/img_page1.jpg',
      'title': 'Explore Upcoming and Nearby Events',
      'description':
          'In publishing and graphic design, Lorem is a placeholder text commonly.'
    },
    {
      'image': 'assets/images/img_page2.jpg',
      'title': 'Web Have Modern Events Calendar Feature',
      'description': 'It is publishing only the specific events.'
    },
    {
      'image': 'assets/images/img_page3.jpg',
      'title': 'To Look Up More Events or Activities Nearby By Map',
      'description': 'It is publishing only the specific events.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Image.asset(
                screens[index]['image']!,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.withOpacity(0.8),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        screens[index]['title']!,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        screens[index]['description']!,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Skip',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Row(
                            children: List.generate(screens.length, (dotIndex) {
                              return Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                width: 8.0,
                                height: 8.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: dotIndex == index
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.5),
                                ),
                              );
                            }),
                          ),
                          TextButton(
                            onPressed: () {
                              if (index < screens.length - 1) {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn,
                                );
                              } else {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              }
                            },
                            child: const Text(
                              'Next',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
