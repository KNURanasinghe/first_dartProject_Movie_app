// ignore: file_names
import 'package:flutter/material.dart';

class Movie {
  final String name;
  final String link;
  final double rate;
  Movie(this.name, this.link, this.rate);
}

// ignore: must_be_immutable, camel_case_types
class DiscriptionsOfMovieDark extends StatelessWidget {
  const DiscriptionsOfMovieDark({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 270,
                width: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Image(
                  image: NetworkImage(movie.link),
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text(
                    "Comments",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    selectionColor: Colors.amber,
                  )),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
