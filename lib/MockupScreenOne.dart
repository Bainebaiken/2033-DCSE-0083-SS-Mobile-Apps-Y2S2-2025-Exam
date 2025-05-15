
import 'package:flutter/material.dart';


class Movie {
  final String imagePath;
  final String title;
  final int year;
  final String time;
  final String description;
  final String type;
  

  Movie({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.type,
    required this.year,
    required this.time,
  });
}


final List<Movie> popularMovies = [
  Movie(
    imagePath: 'assets/baby driver.jpeg', 
    title: 'Baby Driver',
    description: ' after being  coerced into working for a crime boss,a young driver',
    type: ' Car Action',
    year: 2019,
    time: '1h 15m',
  ),
  Movie(
    imagePath: 'assets/to all the boys.jpeg', 
    title: 'TO all the boys; ps . i still love you',
    description: 'lara jean and peter have just taken their romance from a far',
    type: 'Romance ,Comedy',
    year: 2019,
    time: '1h 45m',
  ),
  Movie(
    imagePath: 'assets/john wik.jpeg', 
    title: 'John wik',
    description: 'john wick is on the run after killing a member  of the team',
    type: ' Action',
    year: 2019,
    time: '1h 15m',
  ),
  Movie(
    imagePath: 'assets/exit.jpeg', 
    title: 'Exit',
    description: 'no where to go ',
    type: 'Action ,Comedy',
    year: 2019,
    time: '1h 45m',
  ),
 
];

final List<Movie> upcomingMovies = [
  Movie(
    imagePath: 'assets/baby driver.jpeg', 
    title: 'Baby Driver',
    description: ' after being  coerced into working for a crime boss,a young driver',
    type: ' Car Action',
    year: 2019,
    time: '1h 15m',
  ),
  Movie(
    imagePath: 'assets/to all the boys.jpeg', 
    title: 'TO all the boys; ps . i still love you',
    description: 'lara jean and peter have just taken their romance from a far',
    type: 'Romance ,Comedy',
    year: 2019,
    time: '1h 45m',
  ),
  Movie(
    imagePath: 'assets/john wik.jpeg', 
    title: 'John wik',
    description: 'john wick is on the run after killing a member  of the team',
    type: ' Action',
    year: 2019,
    time: '1h 15m',
  ),
  Movie(
    imagePath: 'assets/exit.jpeg', 
    title: 'Exit',
    description: 'no where to go ',
    type: 'Action ,Comedy',
    year: 2019,
    time: '1h 45m',
  ),
  
];

final List<Movie> nowPlayingMovies = [
  Movie(
    imagePath: 'assets/baby driver.jpeg', 
    title: 'Baby Driver',
    description: ' after being  coerced into working for a crime boss,a young driver',
    type: ' Car Action',
    year: 2019,
    time: '1h 15m',
  ),
  Movie(
    imagePath: 'assets/to all the boys.jpeg', 
    title: 'TO all the boys; ps . i still love you',
    description: 'lara jean and peter have just taken their romance from a far',
    type: 'Romance ,Comedy',
    year: 2019,
    time: '1h 45m',
  ),
  Movie(
    imagePath: 'assets/john wik.jpeg', 
    title: 'John wik',
    description: 'john wick is on the run after killing a member  of the team',
    type: ' Action',
    year: 2019,
    time: '1h 15m',
  ),
  Movie(
    imagePath: 'assets/exit.jpeg', 
    title: 'Exit',
    description: 'no where to go ',
    type: 'Action ,Comedy',
    year: 2019,
    time: '1h 45m',
  ),
  
];

class MovieHomeScreen extends StatefulWidget {
  const MovieHomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MovieHomeScreenState createState() => _MovieHomeScreenState();
}

class _MovieHomeScreenState extends State<MovieHomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text (' Discover and Enjoy Your favourite movies'),
            Image.asset(
              'assets/logo.jpg', 
              height: 30,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search movies...',
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Popular Movies',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              _buildMovieList(popularMovies),
              const SizedBox(height: 24),
              Text(
                'Upcoming Movies',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              _buildMovieList(upcomingMovies),
              const SizedBox(height: 24),
              Text(
                'Now Playing',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              _buildMovieList(nowPlayingMovies),
            ],
          ),
        ),
      ),
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
        selectedItemColor: const Color.fromARGB(255, 17, 183, 17), 
        unselectedItemColor: Colors.grey, 
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildMovieList(List<Movie> movies) {
    return SizedBox(
      height: 250, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return _buildMovieItem(movie);
        },
      ),
    );
  }

  Widget _buildMovieItem(Movie movie) {
    return Container(
      width: 150, 
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                movie.imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            movie.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${movie.type} | ${movie.year}',
            style: TextStyle(
              fontSize: 12,
              color: const Color.fromARGB(255, 116, 114, 114),
            ),
          ),
          Text(
            movie.time,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
          // 
        ],
      ),
    );
  }
}


