
import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../screens/movie_detail_screen.dart';
import '../app_colors.dart';

class MovieCard extends StatefulWidget {
  final Movie movie;

  MovieCard(this.movie);

  @override
  _MovieCardState createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHovered(true),
      onExit: (_) => _setHovered(false),
      child: Card(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => MovieDetailScreen(widget.movie),
              ),
            );
          },
          child: Stack(
            children: [
              Image.network(
                widget.movie.imageUrl,
                width: 150,
                height: 200,
                fit: BoxFit.cover,
              ),
              if (_isHovered)
                Container(
                  width: 150,
                  height: 200,
                  color: Colors.black54,
                  alignment: Alignment.center,
                  child: Text(
                    widget.movie.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _setHovered(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
