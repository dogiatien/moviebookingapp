import 'package:flutter/material.dart';
import '../models/movie.dart';
import 'booking_screen.dart';
import '../app_colors.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  MovieDetailScreen(this.movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                movie.imageUrl,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              SizedBox(height: 20),
              Text(
                movie.title,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.Title),
                textAlign: TextAlign.center,
              ),
              Text(
                movie.genre,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: const Color.fromARGB(255, 85, 84, 84)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(
                      255, 255, 255, 255), // Màu nền của container
                  borderRadius:
                      BorderRadius.circular(10), // Bán kính của góc tròn
                ),
                padding: EdgeInsets.all(16.0),
                width: MediaQuery.of(context).size.width * 0.9,
                constraints: BoxConstraints(minHeight: 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      movie.Director,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: const Color.fromARGB(255, 63, 63, 63)),
                    ),
                    SizedBox(height: 10),
                    Text(
                      movie.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16, color: Color.fromARGB(255, 82, 82, 82)),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.navbar, // Màu nền của container
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                          0.2), // Màu của bóng đổ, có thể điều chỉnh opacity để làm mờ nó
                      spreadRadius: 7, // Bán kính lan rộng của bóng đổ
                      blurRadius: 9, // Bán kính mờ của bóng đổ
                      offset: Offset(0,
                          -3), // Điều chỉnh vị trí của bóng đổ (theo chiều ngang, chiều dọc)
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16.0),
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => BookingScreen(movie),
                            ),
                          );
                        },
                        child: Text('Book Now'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.background,
    );
  }
}
