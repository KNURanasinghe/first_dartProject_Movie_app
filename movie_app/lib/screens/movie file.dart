// ignore: file_names
import 'package:flutter/material.dart';

import 'detailed_file.dart';

// ignore: must_be_immutable
class Movie_Screen extends StatelessWidget {
  Movie_Screen({super.key});
  List<Map<String, dynamic>> movies = [
    {
      'name': 'Inception',
      'link':
          'https://th.bing.com/th/id/R.560ee013f87032e8dca22a8d6f07a498?rik=FCvFMfW1SPB93g&pid=ImgRaw&r=0',
      'rate': 8.8,
    },
    {
      'name': 'The Dark Knight',
      'link':
          'https://th.bing.com/th/id/R.34df6b287faf65b160b47e05ba85bb3b?rik=o5LsP1up4eGlXA&pid=ImgRaw&r=0',
      'rate': 9.0,
    },
    {
      'name': 'Pulp Fiction',
      'link':
          'https://th.bing.com/th/id/OIP.6l6O20efIonlrCeCQd-HUAHaE8?w=266&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'rate': 8.9,
    },
    {
      'name': 'Fight Club',
      'link':
          'https://th.bing.com/th/id/OIP.-jeLhgMJed9ejQYuBUlaygHaKa?w=115&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'rate': 8.8,
    },
    {
      'name': 'The Shawshank Redemption',
      'link':
          'https://th.bing.com/th/id/OIP.yobjBRMMdekQvZwGHeebKgHaLH?w=122&h=183&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'rate': 9.3,
    },
    {
      'name': 'The Godfather',
      'link':
          'https://th.bing.com/th/id/OIP.u0uSf49FOky27YNdZOniPgHaLH?pid=ImgDet&rs=1 ',
      'rate': 8.6,
    },
    {
      'name': 'Goodfellas',
      'link':
          'https://th.bing.com/th/id/OIP.L54fXk2EYwOreL4g2RGb2QHaLG?w=115&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'rate': 8.7,
    },
    {
      'name': 'The Matrix',
      'link':
          'https://th.bing.com/th/id/OIP.mCr3x90hubrByxx2xp21EwHaLH?w=115&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'rate': 8.7,
    },
    {
      'name': 'The Lord of the Rings: The Return of the King',
      'link':
          'https://th.bing.com/th/id/OIP.Ygp3zDHKZLfn8owegrRuGwHaLH?w=124&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'rate': 8.9,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                width: 100,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(
                                movies[index]["link"],
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DiscriptionsOfMovie(
                                              movie: Movie(
                                                  movies[index]['name'],
                                                  movies[index]['link'],
                                                  movies[index]['rate']),
                                            )));
                              },
                              child: Text(
                                movies[index]["name"],
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amber),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(movies[index]["rate"].toString(),
                                      textAlign: TextAlign.center),
                                  const Icon(
                                    Icons.star,
                                    textDirection: TextDirection.rtl,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
