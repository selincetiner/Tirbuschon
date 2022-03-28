import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tirbuschon_feng497/Review/reviewPersonnel.dart';

class ReviewVenuePage extends StatefulWidget {
  const ReviewVenuePage({Key? key}) : super(key: key);

  @override
  _ReviewVenuePageState createState() => _ReviewVenuePageState();
}

class _ReviewVenuePageState extends State<ReviewVenuePage> {
  final links = [
    'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
    'https://thumbs.dreamstime.com/z/restaurant-placeholder-vector-icon-symbol-location-isolated-white-background-eps-restaurant-placeholder-vector-icon-symbol-159301081.jpg',
    'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
    'https://thumbs.dreamstime.com/z/restaurant-placeholder-vector-icon-symbol-location-isolated-white-background-eps-restaurant-placeholder-vector-icon-symbol-159301081.jpg',
    'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
    'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
    'https://thumbs.dreamstime.com/z/restaurant-placeholder-vector-icon-symbol-location-isolated-white-background-eps-restaurant-placeholder-vector-icon-symbol-159301081.jpg',
    'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
    'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
    'https://thumbs.dreamstime.com/z/restaurant-placeholder-vector-icon-symbol-location-isolated-white-background-eps-restaurant-placeholder-vector-icon-symbol-159301081.jpg',
    'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
    'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
    'https://thumbs.dreamstime.com/z/restaurant-placeholder-vector-icon-symbol-location-isolated-white-background-eps-restaurant-placeholder-vector-icon-symbol-159301081.jpg',
  ];

  bool photoSelected = false;
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Review the Venue"),
        ),
        backgroundColor: Colors.grey[100],
        body: Center(
          child: Column(
            children: [
              Container(
                  height: 50,
                  color: Colors.amberAccent,
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "How would you rate the venue?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  )),
              const SizedBox(height: 50),
              RatingBar.builder(
                initialRating: 0,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Add more information (optional)",
                  ),
                ),
              ),
              const SizedBox(height: 50),
              (!photoSelected
                  ? (ElevatedButton(
                      onPressed: () {
                        setState(() {
                          photoSelected = true;
                        });
                      },
                      child: const Icon(Icons.add)))
                  : Expanded(child: _addPhotos())),
              const SizedBox(height: 50),
              ElevatedButton(
                child: const Text(
                  "Submit your review",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReviewPersonnelPage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ));
  }

  Widget _addPhotos() {
    final photoLinks = [
      'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
      'https://thumbs.dreamstime.com/z/restaurant-placeholder-vector-icon-symbol-location-isolated-white-background-eps-restaurant-placeholder-vector-icon-symbol-159301081.jpg',
      'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
      'https://thumbs.dreamstime.com/z/restaurant-placeholder-vector-icon-symbol-location-isolated-white-background-eps-restaurant-placeholder-vector-icon-symbol-159301081.jpg',
      'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
      'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
      'https://thumbs.dreamstime.com/z/restaurant-placeholder-vector-icon-symbol-location-isolated-white-background-eps-restaurant-placeholder-vector-icon-symbol-159301081.jpg',
      'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
      'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
      'https://thumbs.dreamstime.com/z/restaurant-placeholder-vector-icon-symbol-location-isolated-white-background-eps-restaurant-placeholder-vector-icon-symbol-159301081.jpg',
      'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
      'https://cwdaust.com.au/wpress/wp-content/uploads/2015/04/placeholder-restaurant-300x300.png',
      'https://thumbs.dreamstime.com/z/restaurant-placeholder-vector-icon-symbol-location-isolated-white-background-eps-restaurant-placeholder-vector-icon-symbol-159301081.jpg',
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemCount: photoLinks.length,
      itemBuilder: (context, index) {
        return Image.network(photoLinks[index]);
      },
    );
  }
}
