import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tirbuschon_feng497/Core/mainPage.dart';

class ReviewPersonnelPage extends StatefulWidget {
  const ReviewPersonnelPage({Key? key}) : super(key: key);

  @override
  _ReviewPersonnelPageState createState() => _ReviewPersonnelPageState();
}

class _ReviewPersonnelPageState extends State<ReviewPersonnelPage> {
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Review the Venue's Personnel"),
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
                      "How would you rate the personnel?",
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
              ElevatedButton(
                child: const Text(
                  "Submit your review",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }
}
