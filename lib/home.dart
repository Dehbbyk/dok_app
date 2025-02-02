import 'package:dok_app/widgets/app_links.dart';
import 'package:dok_app/widgets/button/custom_button.dart';
import 'package:dok_app/widgets/launchUrl.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              'DOK App',
            style: TextStyle(
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
              onPressed: () {
                LaunchUrl.urlLaunch(context, AppLinks.githubRepo);
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              text: 'HNG Hire Pages',
              color: Colors.green,
              onPressed: (){
                LaunchUrl.urlLaunch(context, AppLinks.hngHirePage);
              }
            ),
            const SizedBox(height: 10),
            CustomButton(
              text: 'Telex',
              color: Colors.orange,
                onPressed: () {
                  LaunchUrl.urlLaunch(context, AppLinks.telex);
                }
            ),
            const SizedBox(height: 10),
            CustomButton(
              text: 'Delve',
              color: Colors.purple,
                onPressed: (){
                  LaunchUrl.urlLaunch(context, AppLinks.delve);
              }
            ),
          ],
        ),
      ),
    );
  }
}
