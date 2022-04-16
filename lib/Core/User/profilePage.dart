import 'dart:ui';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2021/05/19/14/31/dandelion-6266230_960_720.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 1, color: Colors.grey),
                        bottom: BorderSide(width: 1, color: Colors.grey))),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: const Center(
                    child: Text(
                  "Username",
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                )),
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(width: 1, color: Colors.grey))),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: const Center(
                  child: Text(
                "Full name",
                style: TextStyle(fontSize: 20, color: Colors.black87),
              )),
            ),
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(width: 1, color: Colors.grey))),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: const Center(
                  child: Text(
                "Social Media Accounts",
                style: TextStyle(fontSize: 20, color: Colors.black87),
              )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, bottom: 10),
            child: Center(
                child: Text(
              "My Previous Reservations",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            )),
          ),
          _showReservations()
        ],
      ),
    );
  }

  Widget _showReservations() {
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
        return TextButton(
            onPressed: () {
              _reservationDetail(photoLinks[index]);
            },
            child: Image.network(photoLinks[index]));
      },
    );
  }

  void _reservationDetail(var photo) {
    showDialog(
      context: context,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: AlertDialog(
          title: const Text("Reservation Detail"),
          scrollable: true,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 250,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: Image.network(
                    photo,
                    fit: BoxFit.fill,
                  )),
              const SizedBox(height: 40),
              Flexible(
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.grey))),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: const [
                      Icon(Icons.person),
                      SizedBox(width: 5),
                      Flexible(
                          child: Text(
                              "Venue NameNameNameNameNameNameNameNameNameNameNameNameNameNameNameName")),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Flexible(
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1, color: Colors.grey))),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: const [
                        Icon(Icons.info),
                        SizedBox(width: 5),
                        Flexible(
                            child: Text(
                                "Reservation DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"))
                      ],
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              Flexible(
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1, color: Colors.grey))),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: const [
                        Icon(Icons.star_rate_sharp),
                        SizedBox(width: 5),
                        Flexible(child: Text("Your Rating"))
                      ],
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              Flexible(
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1, color: Colors.grey))),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: const [
                        Icon(Icons.rate_review_rounded),
                        SizedBox(width: 5),
                        Flexible(
                            child: Text(
                                "Your CommentttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttCommentttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttCommenttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt"))
                      ],
                    )),
              )
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Back"))
          ],
        ),
      ),
    );
  }
}
