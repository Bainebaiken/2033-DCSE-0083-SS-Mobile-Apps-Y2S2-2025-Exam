import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Mockupscreenone(),
  ));
}

class Mockupscreenone extends StatefulWidget {
  const Mockupscreenone({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MockupscreenoneState createState() => _MockupscreenoneState();
}

class _MockupscreenoneState extends State<Mockupscreenone> {
  int _selectedIndex = 0; // Index of the currently selected tab

  // List of screens for each tab
  static final List<Widget> _screens = [
    const HomeScreen(), 
    const MoviesScreen(), 
    const BookmarkScreen(), 
    const AccountScreen(), 
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 23, 115, 11), 
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/logo.jpg',
              height: 40,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.movie, size: 40),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Find your movies...',
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                ),
                onChanged: (value) {
                 
                },
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 51, 11, 115),
      ),
      body: Column(
        children: [
          DefaultTabController(
            length: 3, // Updated to include "now playing"
            child: Column(
              children: [
                const TabBar(
                  tabs: [
                    Tab(text: "Popular"),
                    Tab(text: "Upcoming"),
                    Tab(text: "now playing"),
                  ],
                ),
                SizedBox(
                  height: 500,
                  child: TabBarView(
                    children: [
                      ListView(
                        children: [
                          MovieCard(
                            title: "To All The Boys: P.S. I Still Love You",
                            year: "2019",
                            rating: "5.1",
                            type: 'romance',
                            description : 'lara jean and peter have jst taken their romance',
                            imagePath: "assets/to all the boys.jpeg",
                          ),
                          MovieCard(
                            title: "Baby Driver",
                            year: "2017",
                            rating: "7.6",
                            type: 'car movie',
                            description: 'after being coerced into working for a crime,...',
                            imagePath: "assets/baby driver.jpeg",
                          ),
                          MovieCard(
                            title: "John Wick",
                            year: "2014",
                            rating: "7.4",
                            type:'action',
                            description: 'john wick is on the run after killing a member of the intern',
                            imagePath: "assets/john wik.jpeg",
                          ),
                          MovieCard(
                            title: "Exit",
                            year: "2019",
                            rating: "5.1",
                            type :'action',
                            description: 'no way out ',
                            imagePath: "assets/exit.jpeg",
                          ),
                          MovieCard(
                            title: "Baby Driver",
                            year: "2017",
                            rating: "7.6",
                            type: 'action',
                            description: 'after coerced into',
                            imagePath: "assets/baby driver.jpeg",
                          ),
                          MovieCard(
                            title: "John Wick",
                            year: "2014",
                            rating: "7.4",
                            type :'action',
                            description : 'killing ',
                            imagePath: "assets/john wik.jpeg",
                          ),
                        ],
                      ),
                      const Center(child: Text("Upcoming Movies")),
                      const Center(child: Text("Now Playing Movies")), 
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Exit"),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

// Placeholder screen for Movies tab
class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Movies Screen"),
      ),
    );
  }
}

// Placeholder screen for Bookmark tab
class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Bookmark Screen"),
      ),
    );
  }
}

// Placeholder screen for Account tab
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Account Screen"),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String year;
  final String type;
  final String description;
  final String rating;
  final String imagePath;

  const MovieCard({super.key, required this.title, required this.year, required this.rating,required this.type,required this.description, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 100,
          height: 150,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 50),
        ),
        title: Text(title),
        subtitle: Text("Year: $year"),
        trailing: Text("Rating: $rating"),
      ),
    );
  }
}