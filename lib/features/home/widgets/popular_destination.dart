import 'package:flutter/material.dart';

import '../../place_details/screens/place_screen.dart';

class PopularDestination extends StatefulWidget {
  const PopularDestination({Key? key}) : super(key: key);

  @override
  State<PopularDestination> createState() => _PopularDestinationState();
}

class _PopularDestinationState extends State<PopularDestination> {
  List<PopularPlace> places = [
    const PopularPlace(
      urlImage:
          'https://images.unsplash.com/photo-1620976128192-7181e9f91342?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
      title: 'Da Nang',
      subtitle: '3D2N',
    ),
    const PopularPlace(
      urlImage:
          'https://images.unsplash.com/photo-1557770401-dabe8321c0c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
      title: 'Ha Noi',
      subtitle: '3D2N',
    ),
    const PopularPlace(
      urlImage:
          'https://images.unsplash.com/photo-1573102701286-62f7453b0e99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      title: 'Hue',
      subtitle: '3D2N',
    ),
    const PopularPlace(
      urlImage:
          'https://images.unsplash.com/photo-1620976128192-7181e9f91342?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
      title: 'Da Nang',
      subtitle: '3D2N',
    ),
    const PopularPlace(
      urlImage:
          'https://images.unsplash.com/photo-1620976128192-7181e9f91342?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
      title: 'Da Nang',
      subtitle: '3D2N',
    ),
    const PopularPlace(
      urlImage:
          'https://images.unsplash.com/photo-1620976128192-7181e9f91342?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
      title: 'Da Nang',
      subtitle: '3D2N',
    ),
    const PopularPlace(
      urlImage:
          'https://images.unsplash.com/photo-1620976128192-7181e9f91342?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
      title: 'Da Nang',
      subtitle: '3D2N',
    ),
    const PopularPlace(
      urlImage:
          'https://images.unsplash.com/photo-1620976128192-7181e9f91342?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
      title: 'Da Nang',
      subtitle: '3D2N',
    ),
    const PopularPlace(
      urlImage:
          'https://images.unsplash.com/photo-1620976128192-7181e9f91342?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
      title: 'Da Nang',
      subtitle: '3D2N',
    ),
    const PopularPlace(
      urlImage:
          'https://images.unsplash.com/photo-1620976128192-7181e9f91342?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
      title: 'Da Nang',
      subtitle: '3D2N',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 500,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: (context, _) => const SizedBox(width: 12),
        itemBuilder: (context, index) => popular(places: places[index]),
      ),
    );
  }

  Widget popular({
    required PopularPlace places,
  }) =>
      SizedBox(
        width: 200,
        height: 200,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Material(
                    child: Ink.image(
                      image: NetworkImage(places.urlImage),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PlaceScreen(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              places.title,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              places.subtitle,
              style: const TextStyle(fontSize: 15, color: Colors.black),
            ),
          ],
        ),
      );
}

class PopularPlace {
  final String urlImage;
  final String title;
  final String subtitle;

  const PopularPlace({
    required this.urlImage,
    required this.subtitle,
    required this.title,
  });
}
