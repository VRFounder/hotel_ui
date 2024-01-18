import 'package:flutter/material.dart';

class HotelsView extends StatelessWidget {
  const HotelsView({
    super.key,
    required this.hotelsImages,
    required this.sectionHotels,
  });

  final List<String> hotelsImages;
  final List<String> sectionHotels;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.5,
      width: double.infinity,
      child: ListView.builder(itemCount: 5, shrinkWrap: true, scrollDirection: Axis.horizontal, itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.all(10),
          alignment: Alignment.bottomLeft,
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage(
                  hotelsImages[index]),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionHotels[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              const Icon(Icons.favorite, color: Colors.white, size: 30,),
            ],
          ),
        );
      }),
    );
  }
}