
// import 'package:flutter/material.dart';

// class CustomBottomNavigationBar extends StatelessWidget {
//   final int currentIndex;
//   final Function(int) onTap;

//   CustomBottomNavigationBar({
//     required this.currentIndex,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // return BottomNavigationBar(
     
//     //   currentIndex: currentIndex,
//     //   onTap: onTap,
//     //   backgroundColor: AppColors.navbar,
//     //   items: const [
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.home,color: Colors.black),
//     //       label: 'Home',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.calendar_today,color: Colors.black),
//     //       label: 'Schedule',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.search,color: Colors.black),
//     //       label: 'Search',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.person,color: Colors.black),
//     //       label: 'Profile',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.logout,color: Colors.black),
//     //       label: 'Logout',
//     //     ),
//     //   ],
//     //   selectedLabelStyle: const TextStyle(color: Colors.white), // Màu cho label được chọn
//     //    unselectedLabelStyle: const TextStyle(color: Colors.grey), // Màu cho label không được chọn
//     // );return Theme(
//   return Theme(
//   data: Theme.of(context).copyWith(
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: Color.fromARGB(255, 43, 66, 131),
//       selectedItemColor: Colors.white, // Màu cho icon và label được chọn
//       unselectedItemColor: Colors.grey, // Màu cho icon và label không được chọn
//       selectedLabelStyle: TextStyle(color: Colors.white), // Màu cho label được chọn
//       unselectedLabelStyle: TextStyle(color: Colors.grey), // Màu cho label không được chọn
//     ),
//   ),
//   child: BottomNavigationBar(
//     currentIndex: currentIndex,
//     onTap: onTap,
//     items: const [
//       BottomNavigationBarItem(
//         icon: Icon(Icons.home),
//         label: 'Home',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.calendar_today),
//         label: 'Schedule',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.search),
//         label: 'Search',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.person),
//         label: 'Profile',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.logout),
//         label: 'Logout',
//       ),
//     ],
//   ),
// );

// }
// }
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type:BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(255, 244, 244, 245), // Thay đổi màu nền ở đây
      selectedItemColor: const Color.fromARGB(255, 86, 86, 86), // Màu cho icon và label được chọn
      unselectedItemColor: Colors.grey, // Màu cho icon và label không được chọn
      selectedLabelStyle: TextStyle(color: const Color.fromARGB(255, 68, 68, 68)), // Màu cho label được chọn
      unselectedLabelStyle: TextStyle(color: Colors.grey), // Màu cho label không được chọn
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.logout),
          label: 'Logout',
        ),
      ],
    );
  }
}
