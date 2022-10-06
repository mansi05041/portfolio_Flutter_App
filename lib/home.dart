import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage("assets/images/mg.jpeg"),
              ),
              const Text(
                'Mansi joshi',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'MCA Postgrauate',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'PaytoneOne',
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[100],
                ),
                child: Row(
                  children: const [
                    Icon(Icons.email_outlined),
                    SizedBox(
                      width: 15,
                    ),
                    Text('joshimansi32@gmail.com'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'project_page');
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[100],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.file_copy),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Projects'),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse(
                      'https://www.linkedin.com/in/mansi-joshi-663aa81a0/');
                  _launchUrl(_url);
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[100],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.connect_without_contact),
                      SizedBox(
                        width: 15,
                      ),
                      Text('connect with me on Linkedin!'),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse('https://github.com/mansi05041');
                  _launchUrl(_url);
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[100],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.workspace_premium),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Check out my github profile!!'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
