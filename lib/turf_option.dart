import 'package:flutter/material.dart';

class TurfOptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Receive the selected location from the previous page
    final String selectedLocation = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images.JPG'), // Background image for Login Page
        fit: BoxFit.cover,
    ),
    ),
    child: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
              ),
            ],
          ),
          width: 700,
          child: ListView(
            children: [
              TurfOptionCard(
                imagePath: 'assets/s1.JPG',
                title: 'Twin Dolphins Swimming Pool',
                location: 'Hotel Sri Nivas,Koot Road,Irumbai,Puducherry',
                selectedLocation: selectedLocation,
              ),
              TurfOptionCard(
                imagePath: 'assets/s2.JPG',
                title: 'Nalla farm house ',
                location: 'Auroville post, mortandi 605101',
                selectedLocation: selectedLocation,
              ),
              TurfOptionCard(
                imagePath: 'assets/s3.JPG',
                title: 'Blue star swimming pool',
                location: 'Ilango nagar, Puducherry-605001',
                selectedLocation: selectedLocation,
              ),
            ],
          ),
        ),
      ),
      )
    );
  }
}

class TurfOptionCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final String selectedLocation;

  const TurfOptionCard({
    required this.imagePath,
    required this.title,
    required this.location,
    required this.selectedLocation,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Pass both selected location and turf name to SlotSelectionPage
        Navigator.pushNamed(
          context,
          '/slotSelection',
          arguments: {
            'selectedLocation': selectedLocation,
            'selectedTurf': title,
          },
        );
      },
      child: Column(
        children: [
          Image.asset(imagePath, width: 300, height: 200, fit: BoxFit.cover),
          const SizedBox(height: 10),
          Text(title, style: const TextStyle(fontSize: 20,color: Colors.white)),
          Text(location,style: const TextStyle(color: Colors.white),),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
