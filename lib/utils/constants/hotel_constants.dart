class HotelConstants {
  List<String> sectionTitles() {
    return [
      "Business Hotels",
      "Airport Hotels",
      "Resort Hotels",
    ];
  }

  List<String> sectionHotels() {
    return [
      "Hotel 1",
      "Hotel 2",
      "Hotel 3",
      "Hotel 4",
      "Hotel 5",
    ];
  }

  List<String> hotelsImages() {
    List<String> list = [
      "assets/images/ic_hotels_1.jpg",
      "assets/images/ic_hotels_2.jpg",
      "assets/images/ic_hotels_3.jpg",
      "assets/images/ic_hotels_4.jpg",
      "assets/images/ic_hotels_5.jpg"
    ];
    list.shuffle();
    return list;
  }
}
