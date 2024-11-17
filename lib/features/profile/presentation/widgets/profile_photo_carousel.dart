import 'package:flutter/material.dart';

class ProfilePhotoCarousel extends StatelessWidget {
  const ProfilePhotoCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemCount: 5, // TODO: Replace with actual photo count
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8),
            child: Center(
              child: Icon(
                Icons.photo,
                size: 50,
                color: Colors.grey[400],
              ),
            ),
          );
        },
      ),
    );
  }
} 