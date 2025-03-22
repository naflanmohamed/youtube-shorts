import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShortsScreen(),
    );
  }
}

class ShortsScreen extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {'username': '@apple', 'description': 'New Iphone 16 Pro Max #iphone16'},
    {'username': '@google', 'description': 'How Google Cloud Works'},
    {'username': '@flutter', 'description': 'Flutter Widget Tutorial'},
    {'username': '@computer_science', 'description': 'Computer Science Compiler Construction Full Course with in 2 hours'},
    {'username': '@dell', 'description': 'New Dell Laptop Features'},
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Stack(
            // fit: StackFit.loose,
            children: [
              // Video Placeholder
              Container(
                color: Colors.black,
                child: Center(
                  child: Text(
                    'Video ${index + 1}',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),

              // Right-side Action Panel
              Positioned(
                right: 20,
                bottom: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.thumb_up, color: Colors.white, size: 40),
                      onPressed: () {},
                    ),
                    SizedBox(height: 10),
                    IconButton(
                      icon: Icon(Icons.thumb_down, color: Colors.white, size: 40),
                      onPressed: () {} ,
                    ),
                    SizedBox(height: 10),
                    IconButton(
                      icon: Icon(Icons.comment, color: Colors.white, size: 40),
                      onPressed: () {},
                    ),
                    SizedBox(height: 10),
                    IconButton(
                      icon: Icon(Icons.share, color: Colors.white, size: 40),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              // Bottom Video Description
              Positioned(
                bottom: 20,
                left: 10,
                right: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      videos[index]['username']!,
                      style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      videos[index]['description']!,
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
