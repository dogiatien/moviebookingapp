import 'package:flutter/material.dart';
import 'package:moviebookingapp/screens/admin_dashboard.dart';
import 'package:moviebookingapp/screens/manage_movies.dart';
import 'package:moviebookingapp/screens/manage_showtimes.dart';
import 'package:moviebookingapp/screens/manage_tickets.dart';
import 'package:moviebookingapp/screens/manage_users.dart';
import 'screens/home_screen.dart';
import 'screens/schedule_screen.dart';
import 'screens/search_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/login_screen.dart';

import 'models/movie.dart';
import 'widgets/bottom_appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      routes: {
        '/admin_dashboard': (context) =>
            AdminDashboard(), // Trang quản lý chính
        '/manage_movies': (context) => ManageMoviesPage(), // Trang quản lý phim
        '/manage_showtimes': (context) =>
            ManageShowtimesPage(), // Trang quản lý lịch chiếu
        '/manage_users': (context) =>
            ManageUsersPage(), // Trang quản lý người dùng
        '/manage_tickets': (context) => ManageTicketsPage(), // Trang quản lý vé
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Movie> _movies = [
    Movie(
      id: '1',
      title: 'Movie 1',
      genre: 'cartoon',
      Director: 'Đạo diễn 1',
      price: '56.000 vnd',
      description: 'Mô tả chi tiết cho movie 1',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Movie(
      id: '2',
      title: 'Movie 2',
      genre: 'comedy',
      price: '89.000 vnd',
      Director: 'Đạo diễn 2',
      description: 'Mô tả chi tiết cho movie 2',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Movie(
      id: '3',
      title: 'Movie 3',
      genre: 'horror,comedy',
      price: '96.000 vnd',
      Director: 'Đạo diễn 3',
      description: 'Mô tả chi tiết cho movie 3',
      imageUrl: 'https://via.placeholder.com/150',
    ),
  ];

  late List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      HomeScreen(movies: _movies),
      ScheduleScreen(movies: _movies),
      SearchScreen(),
      ProfileScreen(),
      LoginScreen(),
    ];
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        // Thay đổi thành CustomBottomAppBar
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
