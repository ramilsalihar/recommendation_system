import 'package:flutter/material.dart';
import 'package:recomendation_system/features/places/places_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  Map<String, bool> places = {
    'Recommended': false,
    'Entertainment': false,
    'Food': false,
    'Cultural & Historical': false,
    'Outdoor Activities': false,
    'Trips': false,
    'Get Drunk': false,
  };

  Map<String, bool> target = {
    'Friends': false,
    'Family': false,
    'Couples': false,
    'Tourist': false,
    'Solo': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choose a Place you want to go!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 32),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                ...places.keys.map(
                  (place) => OutlinedButton(
                    onPressed: () {
                      setState(() {
                        places[place] = !places[place]!;
                      });
                    },
                    child: Text(
                      place,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      foregroundColor:
                          places[place]! ? Colors.white : Colors.blue,
                      backgroundColor: places[place]! ? Colors.blue : null,
                    ),
                  ),
                ),
              ],
            ),
            Text('What type of company you are going with?'),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                ...target.keys.map(
                  (tag) => OutlinedButton(
                    onPressed: () {
                      setState(() {
                        target[tag] = !target[tag]!;
                      });
                    },
                    child: Text(
                      tag,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      foregroundColor:
                          target[tag]! ? Colors.white : Colors.blue,
                      backgroundColor: target[tag]! ? Colors.blue : null,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PlacesPage()),
                );
              },
              child: const Text('Lets Go!'),
            ),
          ],
        ),
      ),
    );
  }
}
