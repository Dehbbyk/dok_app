import 'package:dok_app/widgets/button/custom_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  final String githubRepo = "https://github.com/dehbbyk/dok_app";
  final String hngHirePage = "https://hng.tech/hire";
  final String telex = "https://telex.ai";
  final String delve = "https://delve.hng.tech";

  void _launchURL(BuildContext context, String url) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Open Link"),
        content: Text("Please copy the link and open it in your browser: \n$url"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              'DOK App',
            style: TextStyle(
              fontSize: 30,
              fontWeight:  FontWeight.bold
            ),
          )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'View GitHub Repository',
              color: Colors.blue,
              onPressed: () => _launchURL(context, githubRepo),
            ),
            SizedBox(height: 10),
            CustomButton(
              onPressed: () => _launchURL(context, hngHirePage),
              text: 'HNG Hire Pages',
              color: Colors.green,
            ),
            SizedBox(height: 10),
            CustomButton(
              onPressed: () => _launchURL(context, telex),
              text: 'Telex',
              color: Colors.orange,
            ),
            SizedBox(height: 10),
            CustomButton(
              onPressed: () => _launchURL(context, delve),
              text: 'Delve',
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
