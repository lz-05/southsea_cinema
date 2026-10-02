import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: cinemaBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TITLE arranged in a Row (future icons can be added here)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                  child: Text(
                    'The Grand Adventure',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Placeholder for future widgets (e.g., rating stars, favourite icon)
                // Icon(Icons.star, color: Colors.amber),
              ],
            ),

            const SizedBox(height: 12),

            // DESCRIPTION (still part of the Column)
            const Text(
              'A thrilling journey across mysterious lands, following a group of explorers as they uncover ancient secrets.',
              style: TextStyle(
                fontSize: 16,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}