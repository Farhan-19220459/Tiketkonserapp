class Concert {
  final String id;
  final String name;
  final String date;
  final String venue;
  final double regularPrice;
  final double vipPrice;
  final String description;
  final String imageUrl;

  Concert({
    required this.id,
    required this.name,
    required this.date,
    required this.venue,
    required this.regularPrice,
    required this.vipPrice,
    required this.description,
    required this.imageUrl,
  });
}
