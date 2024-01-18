import 'package:flutter/material.dart';

import 'hotel_view.dart';

class SectionView extends StatelessWidget {
  const SectionView({
    super.key,
    required this.sectionTitles,
    required this.hotelsImages,
    required this.sectionHotels,
  });

  final List<String> sectionTitles;
  final List<String> hotelsImages;
  final List<String> sectionHotels;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemCount: 3, shrinkWrap: true, itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sectionTitles[index],
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20,),
              HotelsView(hotelsImages: hotelsImages, sectionHotels: sectionHotels)
            ],
          ),
        );
      }),
    );
  }
}