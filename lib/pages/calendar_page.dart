import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarEventScreen extends StatefulWidget {
  const CalendarEventScreen({super.key});

  @override
  _CalendarEventScreenState createState() => _CalendarEventScreenState();
}

class _CalendarEventScreenState extends State<CalendarEventScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(14.0),
          child: Text(
            'My Calendar Event',
            
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Icon(
              Icons.more_vert_outlined,
              color: Colors.blue,
            ),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Events (8)',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: [
                  Card(
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
                  ),
                  Card(
                    margin: const EdgeInsets.only(bottom: 16.0),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/calendar_page.jpg',
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                      title: const Text(
                        'Future Entrepreneur',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        '23rd May, 2024',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.only(bottom: 16.0),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/calendar_page.jpg',
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                      title: const Text(
                        'Future Entrepreneur',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        '23rd May, 2024',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.only(bottom: 16.0),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/calendar_page.jpg',
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                      title: const Text(
                        'Future Entrepreneur',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        '23rd May, 2024',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.only(bottom: 16.0),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/calendar_page.jpg',
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                      title: const Text(
                        'Future Entrepreneur',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        '23rd May, 2024',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
