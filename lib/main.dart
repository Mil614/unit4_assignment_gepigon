import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'unit4_assignment_gepigon',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Emille Rey Gepigon'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            children: [
              // Row to place profile image and text side by side
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Image
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://scontent.fceb2-2.fna.fbcdn.net/v/t39.30808-6/460026724_8379694798743245_1824391333301142254_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHopbmV8d9VZKNy5nvChYZzPBPHZsGFs508E8dmwYWznYcdisfKK8_FMJrMRsIsIU2QJcP5drtpHVUgr2FXBZqR&_nc_ohc=f1p1x0j4jK8Q7kNvgFiVEXV&_nc_ht=scontent.fceb2-2.fna&oh=00_AYD23AYdcKPe2J2ao6R0U2rr8CQrpFHEfx3WbrvQxcjNBw&oe=6701EAA4'),
                  ),
                  SizedBox(width: 20), // Space between image and text
                  // Name and Introduction
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'I am Emille Rey Gepigon',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                      ),
                      Text(
                        'Nice to meet you!',
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Section title
              Text(
                'Get to know me!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Information Cards
              _buildInfoCard(
                icon: Icons.email,
                title: 'Email',
                subtitle: 'emillerey.gepigon@wvsu.edu.ph',
                color: Colors.orange,
              ),
              _buildInfoCard(
                icon: Icons.cake,
                title: 'Birthday',
                subtitle: 'June 14, 2003',
                color: Colors.orange,
              ),
              _buildInfoCard(
                icon: Icons.travel_explore,
                title: 'Hobbies',
                subtitle:
                    'Playing mobile and computer games, basketball, long bike rides',
                color: Colors.orange,
              ),
              _buildInfoCard(
                icon: Icons.music_note,
                title: 'Favorite Music',
                subtitle: 'Namumula by Maki',
                color: Colors.orange,
              ),
              SizedBox(height: 20),
              // Biography Section
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Who is Emille?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'I grew up in Brgy.Talacu-an Leon, Iloilo, and ever since I was small I have always loved staying at home and play games. '
                'I like to be alone most of the time if I am not with some of my closest friends, I spend my time either studying and listening to music or just play games. '
                'I am now a third-year Information Technology (IT) student at West Visayas State University, finding balance between my studies, hobbies, friends and the time to play my favorite games.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(
      {IconData? icon, String? title, String? subtitle, Color? color}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Icon(icon, color: color, size: 30),
        title: Text(title!,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle!, style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
