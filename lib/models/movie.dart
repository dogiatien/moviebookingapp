class Movie {
  final String id;
  final String price;
  final String title;
  final String genre;
  final String description;
  final String imageUrl;
  final String Director;

  Movie({
    required this.id,
    required this.title,
    required this.genre,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.Director,
  });
}