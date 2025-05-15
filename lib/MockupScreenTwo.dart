import 'package:flutter/material.dart';

class MockupScreenTwo extends StatefulWidget {
  const MockupScreenTwo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MockupScreenTwoState createState() => _MockupScreenTwoState();
}

class _MockupScreenTwoState extends State<MockupScreenTwo> {
  
  final List<Map<String, String>> popularMovies = [
    {'image': 'assets/bird of prey.jpeg', 'bird of prey': 'comedy', 'crime': 'Action'},
    {'image': 'assets/red sparrow.jpg', 'title': 'Movie Title 2', 'mystery': 'Comedy'},
    {'image': 'assets/bird of prey.jpeg', 'birds of prey': 'crime', 'comedy': 'Drama'},
    {'image': 'assets/red sparrow.jpg', 'title': 'Movie Title 4', 'type': 'Sci-Fi'},
    {'image': 'assets/bird of prey.jpeg', 'birds of prey': 'comedy', 'crime': 'Thriller'},
  ];

  final List<Map<String, String>> nowPlayingMovies = [
    {'image': 'assets/to all the boys.jpeg', 'to all the boys ': 'Romance', 'Commedy': 'Action'},
    {'image': 'assets/ferari.jpeg', 'ford': 'Ferrari', 'Action': 'Comedy'},
    {'image': 'assets/to all the boys.jpeg', 'to all the boys': 'ford', 'comedy': 'Drama'},
    {'image': 'assets/ferari.jpeg', 'ferrari': 'ford', 'car': 'Sci-Fi'},
    {'image': 'assets/to all the boys.jpeg', 'to all the boys ': 'still love ', 'Romance': 'Thriller'},
  ];

  final List<Map<String, String>> upcomingMovies = [
    {'image': 'assets/to all the boys.jpeg', 'all the boys ': 'Romance', ' movie': 'Action'},
    {'image': 'assets/ferari.jpeg', 'ferari': 'ford', 'type': 'Comedy'},
    {'image': 'assets/ferari.jpeg', 'ferrari': 'ford', 'car': 'Drama'},
    {'image': 'assets/bird of prey.jpeg', 'bird prey': 'prey', 'type': 'Sci-Fi'},
    {'image': 'assets/red sparrow.jpg', 'red sarrow': 'Movie ', 'mystery': 'Thriller'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(
              height: 200, 
              child: PageView.builder(
                itemCount: popularMovies.length, 
                itemBuilder: (context, index) {
                  final movie = popularMovies[index];
                  return Image.asset(
                    movie['image']!,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            const SizedBox(height: 16),

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "What's Popular",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularMovies.length,
                itemBuilder: (context, index) {
                  final movie = popularMovies[index];
                  return MovieItem(
                    imagePath: movie['image']!,
                    title: movie['title']!,
                    type: movie['type']!,
                  );
                },
              ),
            ),
            const SizedBox(height: 16),

           
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Now Playing",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 200, 
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: nowPlayingMovies.length,
                itemBuilder: (context, index) {
                  final movie = nowPlayingMovies[index];
                  return MovieItem(
                    imagePath: movie['image']!,
                    title: movie['title']!,
                    type: movie['type']!,
                  );
                },
              ),
            ),
            const SizedBox(height: 16),

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Upcoming",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: upcomingMovies.length,
                itemBuilder: (context, index) {
                  final movie = upcomingMovies[index];
                  return MovieItem(
                    imagePath: movie['image']!,
                    title: movie['title']!,
                    type: movie['type']!,
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class MovieItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String type;

  const MovieItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, 
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            type,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

