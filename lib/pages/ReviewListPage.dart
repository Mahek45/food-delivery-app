import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewListPage extends StatelessWidget {
  const ReviewListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer Reviews"),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("reviews")
            .orderBy("timestamp", descending: true)
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text("No reviews yet."));
          }

          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var reviewData = snapshot.data!.docs[index];
              Map<String, dynamic> data = reviewData.data() as Map<String, dynamic>;

              String reviewText = data.containsKey("review") ? data["review"] : "No review";
              double ratingValue = data.containsKey("rating")
                  ? (data["rating"] as num).toDouble()
                  : 0.0;

              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  title: Text(reviewText),
                  subtitle: RatingBarIndicator(
                    rating: ratingValue,
                    itemCount: 5,
                    itemSize: 20.0,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
