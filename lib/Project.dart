import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              'My projects',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          body: Container(
            color: Colors.blue[100],
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      'Portfolio',
                      style: TextStyle(fontFamily: 'PaytoneOne', fontSize: 18),
                    ),
                    subtitle: Text('First Task : GDSC - Flutter'),
                    contentPadding: EdgeInsets.all(20),
                    onTap: () {
                      final Uri _url = Uri.parse('https://github.com/');
                      _launchUrl(_url);
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'could not launch $_url';
  }
}
