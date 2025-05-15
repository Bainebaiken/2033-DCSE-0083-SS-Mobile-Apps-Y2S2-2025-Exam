// import 'package:flutter/material.dart';

// class Mockupscreentwo extends StatelessWidget {
//   const Mockupscreentwo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
            
//             Stack(
//               children: [
//                 SizedBox(
//                   height: 300,
//                   width: double.infinity,
//                   child: Image.asset(
//                     'assets/jumanji_poster.jpeg', 
//                     fit: BoxFit.cover,
//                     errorBuilder: (context, error, stackTrace) => Container(
//                       color: Colors.grey,
//                       child: const Center(child: Text("Image Not Found")),
//                     ),
//                   ),
//                 ),
//                 // Jumanji Title
//                 const Positioned(
//                   top: 20,
//                   left: 10,
//                   child: Text(
//                     "Jumanji: The Next Level",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       shadows: [
//                         Shadow(
//                           color: Colors.black54,
//                           offset: Offset(2, 2),
//                           blurRadius: 3,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 // Logo
//                 Positioned(
//                   top: 20,
//                   right: 10,
//                   child: Image.asset(
//                     'assets/logo.jpg', 
//                     height: 40,
//                     errorBuilder: (context, error, stackTrace) => const Icon(
//                       Icons.movie,
//                       size: 40,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 // What's Popular Chip
//                 const Positioned(
//                   bottom: 10,
//                   left: 10,
//                   child: Chip(
//                     label: Text("What's Popular"),
//                     backgroundColor: Colors.black54,
//                     labelStyle: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 "What's Popular",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//             ),
            
//             SizedBox(
//               height: 200,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   MovieCard(
//                     title: "Birds of Prey",
//                     rating: "7.2",
//                     imagePath: "assets/bird of prey.jpeg", 
//                   ),
//                   MovieCard(
//                     title: "Red Sparrow",
//                     rating: "6.5",
//                     imagePath: "assets/red sparrow.jpg", 
//                   ),
//                 ],
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 "Now Playing",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//             ),
//             // Now Playing Section
//             Column(
//               children: [
//                 MovieCard(
//                   title: "To All The Boys: P.S. I Still Love You",
//                   rating: "5.1",
//                   imagePath: "assets/to all the boys.jpeg", 
//                 ),
//                 MovieCard(
//                   title: "Ford v Ferrari",
//                   rating: "8.1",
//                   imagePath: "assets/ferari.jpeg", 
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MovieCard extends StatelessWidget {
//   final String title;
//   final String rating;
//   final String imagePath;

//   const MovieCard({super.key, required this.title, required this.rating, required this.imagePath});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.all(8.0),
//       child: ListTile(
//         leading: Image.asset(
//           imagePath,
//           width: 100,
//           height: 150,
//           fit: BoxFit.cover,
//           errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 50),
//         ),
//         title: Text(title),
//         trailing: Text("Rating: $rating"),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

// Define a class for Movie
class Movie {
  final String imagePath;
  final String title;
  final String type;
  
  

  Movie({
    required this.imagePath,
    required this.title,
    required this.type,
    
  });
}

// Dummy data for movies (replace with your actual data)
final List<Movie> popularMovies = [
  Movie(
    imagePath: 'assets/bird of prey.jpeg',
    title: 'bird of a prey',
    type: 'Action',
    
  ),
  Movie(
    imagePath: 'assets/red sparrow.jpg',
    title: 'Red sparrow',
    type: 'Comedy',
  ),
  Movie(
    imagePath: 'assets/bird of prey.jpeg',
    title: 'bird of a prey',
    type: 'Action',
    
  ),
  Movie(
    imagePath: 'assets/red sparrow.jpg',
    title: 'Red sparrow',
    type: 'Comedy',
  ),
];

final List<Movie> upcomingMovies = [
  Movie(
    imagePath: 'assets/to all the boys.jpeg',
    title: 'To all the boys',
    type: 'Drama',
    
  ),
  Movie(
    imagePath: 'assets/bird of prey.jpeg',
    title: 'bird of a prey',
    type: 'Action',
    
  ),
  Movie(
    imagePath: 'assets/red sparrow.jpg',
    title: 'Red sparrow',
    type: 'Comedy',
  ),
];

final List<Movie> nowPlayingMovies = [
  Movie(
    imagePath: 'assets/to all the boys.jpeg',
    title: 'love ',
    type: 'Sci-Fi',
  ),
  Movie(
    imagePath: 'assets/bird of prey.jpeg',
    title: 'bird of a prey',
    type: 'Action',
    
  ),
  Movie(
    imagePath: 'assets/red sparrow.jpg',
    title: 'Red sparrow',
    type: 'Comedy',
  ),
];

class Mockupscreentwo extends StatelessWidget {
  const Mockupscreentwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Stack(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/jumaji.jpeg', 
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey,
                        child: const Center(child: Text("Jumanji :The Next level")),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    right: 40,
                    child: Text(
                      "Jumanji :The Next level",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.black54,
                            offset: Offset(2, 2),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 10,
                    child: Image.asset(
                      'assets/logo.jpg', 
                      height: 30,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.movie,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
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
            movie. type,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
          
        ],
      ),
    );
  }
}