// import 'package:flutter/material.dart';
// import '../models/movie.dart';
// import 'success_screen.dart';

// class BookingScreen extends StatefulWidget {
//   final Movie movie;

//   BookingScreen(this.movie);

//   @override
//   _BookingScreenState createState() => _BookingScreenState();
// }

// class _BookingScreenState extends State<BookingScreen> {
//   int _ticketCount = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Book Tickets for ${widget.movie.title}'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               widget.movie.title,
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Text('Number of Tickets'),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.remove),
//                   onPressed: () {
//                     setState(() {
//                       if (_ticketCount > 1) _ticketCount--;
//                     });
//                   },
//                 ),
//                 Text(_ticketCount.toString(), style: TextStyle(fontSize: 18)),
//                 IconButton(
//                   icon: Icon(Icons.add),
//                   onPressed: () {
//                     setState(() {
//                       _ticketCount++;
//                     });
//                   },
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     // Xử lý thanh toán qua PayPal
//                     _handlePayment('PayPal');
//                   },
//                   child: Row(
//                     children: [
//                       Icon(Icons.payment),
//                       SizedBox(width: 8),
//                       Text('PayPal'),
//                     ],
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Xử lý thanh toán qua Visa
//                     _handlePayment('Visa');
//                   },
//                   child: Row(
//                     children: [
//                       Icon(Icons.credit_card),
//                       SizedBox(width: 8),
//                       Text('Visa'),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Điều hướng đến màn hình thành công
//                   Navigator.of(context).pushReplacement(
//                     MaterialPageRoute(
//                       builder: (ctx) => SuccessScreen(),
//                     ),
//                   );
//                 },
//                 child: Text('Book Now'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _handlePayment(String paymentMethod) {
//     // Xử lý thanh toán ở đây
//     // Sau khi thanh toán thành công, điều hướng đến màn hình thành công
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(
//         builder: (ctx) => SuccessScreen(),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../models/movie.dart';
import 'success_screen.dart';

class BookingScreen extends StatefulWidget {
  final Movie movie;

  BookingScreen(this.movie);

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int _ticketCount = 1;
  String _selectedSeat = 'A1'; // Giá trị mặc định cho ghế ngồi

// Sử dụng kiểu String thay vì String?
void _handleChangeSeat(String? newValue) {
  if(newValue != null) {
    setState(() {
      _selectedSeat = newValue;
    });
  }
}
  @override
  Widget build(BuildContext context) {
    List<String> seats = ['A1', 'A2', 'A3', 'B1', 'B2', 'B3']; // Danh sách các ghế ngồi

    return Scaffold(
      appBar: AppBar(
        title: Text('Book Tickets for ${widget.movie.title}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.movie.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Number of Tickets'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (_ticketCount > 1) _ticketCount--;
                    });
                  },
                ),
                Text(_ticketCount.toString(), style: TextStyle(fontSize: 18)),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      _ticketCount++;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Select Seat'),
            DropdownButton<String>(
              value: _selectedSeat,
              onChanged: _handleChangeSeat,
              items: seats.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Xử lý thanh toán qua PayPal
                    _handlePayment('PayPal');
                  },
                  child: Row(
                    children: [
                      Icon(Icons.payment),
                      SizedBox(width: 8),
                      Text('PayPal'),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Xử lý thanh toán qua Visa
                    _handlePayment('Visa');
                  },
                  child: Row(
                    children: [
                      Icon(Icons.credit_card),
                      SizedBox(width: 8),
                      Text('Visa'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Điều hướng đến màn hình thành công
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) => SuccessScreen(),
                    ),
                  );
                },
                child: Text('Book Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handlePayment(String paymentMethod) {
    // Xử lý thanh toán ở đây
    // Sau khi thanh toán thành công, điều hướng đến màn hình thành công
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => SuccessScreen(),
      ),
    );
  }
}
