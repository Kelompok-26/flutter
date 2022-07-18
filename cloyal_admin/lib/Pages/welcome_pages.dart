part of 'pages.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            const Text('WELCOME'),
            const SizedBox(
              height: 15,
            ),

          ],
        ),
        ),
    );
  }
}