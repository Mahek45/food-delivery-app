import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  double rating = 0;
  TextEditingController reviewController = TextEditingController();

  void submitReview() {
    // Backend ko review send karne ka logic yaha add karo
    print("Review Submitted: ${reviewController.text}, Rating: $rating");
    
    // Confirmation snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Thank you for your feedback!")),
    );

    // Back to home page or previous screen
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Write a Review"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Rate your experience:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            
            // Rating Bar
            Row(
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    Icons.star,
                    color: index < rating ? Colors.orange : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      rating = index + 1.0;
                    });
                  },
                );
              }),
            ),
            
            const SizedBox(height: 20),

            // Review Input
            TextField(
              controller: reviewController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Write your review...",
              ),
              maxLines: 3,
            ),
            
            const SizedBox(height: 20),

            // Submit Button
            Center(
              child: ElevatedButton(
                onPressed: submitReview,
                child: const Text("Submit Review"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
