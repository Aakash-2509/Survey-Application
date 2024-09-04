import 'package:flutter/material.dart';

class EmailPreferenceScreen extends StatefulWidget {
  const EmailPreferenceScreen({Key? key}) : super(key: key);

  @override
  State<EmailPreferenceScreen> createState() => _EmailPreferenceScreenState();
}

class _EmailPreferenceScreenState extends State<EmailPreferenceScreen> {
  bool switch1 = false;
  bool switch2 = false;
  bool switch3 = false;
  bool switch4 = false;
  bool switch5 = false;
  bool switch6 = false;
  bool switch7 = false;
  bool switch8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Preferences'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Switch(
                  value: switch1,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.black,
                  activeThumbImage: const AssetImage('assets/Icon.png'),
                  onChanged: (value) {
                    setState(() {
                      switch1 = value;
                    });
                  },
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Community and Brand Updates',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Get the latest news and updates about our brand and community.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Switch(
                  value: switch2,
                  activeThumbImage: const AssetImage('assets/Icon.png'),
                  activeColor: Colors.white,
                  activeTrackColor: Colors.black,
                  onChanged: (value) {
                    setState(() {
                      switch2 = value;
                    });
                  },
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Newsletters & Blogs',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          'Stay updated with our latest newsletters and blogs.'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Switch(
                  value: switch3,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.black,
                  activeThumbImage: const AssetImage('assets/Icon.png'),
                  onChanged: (value) {
                    setState(() {
                      switch3 = value;
                    });
                  },
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Social Contests',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Join our social media contests and win prizes.'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Switch(
                  value: switch4,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.black,
                  activeThumbImage: const AssetImage('assets/Icon.png'),
                  onChanged: (value) {
                    setState(() {
                      switch4 = value;
                    });
                  },
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Customer Support',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          'Quick and reliable customer support whenever you need it.'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Switch(
                  value: switch5,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.black,
                  activeThumbImage: const AssetImage('assets/Icon.png'),
                  onChanged: (value) {
                    setState(() {
                      switch5 = value;
                    });
                  },
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Survey Invites',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          'Receive exclusive survey invitations to earn more points'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Switch(
                  value: switch6,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.black,
                  activeThumbImage: const AssetImage('assets/Icon.png'),
                  onChanged: (value) {
                    setState(() {
                      switch6 = value;
                    });
                  },
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Offers & Announcements',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          'Discover our latest offers and important announcements.'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Switch(
                  value: switch7,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.black,
                  activeThumbImage: const AssetImage('assets/Icon.png'),
                  onChanged: (value) {
                    setState(() {
                      switch7 = value;
                    });
                  },
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile App Updates',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Stay in the loop with our app updates.'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Switch(
                  value: switch8,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.black,
                  activeThumbImage: const AssetImage('assets/Icon.png'),
                  onChanged: (value) {
                    setState(() {
                      switch8 = value;
                    });
                  },
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Polls and Insights',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Participate in polls and gain valuable insights.'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement the cancel functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Colors.black),
                    ),
                  ),
                  child: const Text(
                    "Unsubscribe",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Colors.black,
                  ),
                  child: const Text(
                    "Help & Support",
                    style: TextStyle(color: Colors.white),
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
