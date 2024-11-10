import 'package:body_weight_monitoring_apk/features/home/BodyScreen.dart';
import 'package:body_weight_monitoring_apk/features/home/HearthScreen.dart';
import 'package:body_weight_monitoring_apk/features/home/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF9F5FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Today',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Advance body weight monitoring system',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              _buildTrackingDaysSection(),
              const SizedBox(height: 20),
              const Text(
                'Following',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              _buildFollowingSection(context, controller),
              const SizedBox(height: 20),
              const Text(
                'All Health Data',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              _buildHealthDataList(context, controller),
            ],
          ),
        ),
      ),
    );
  }

  // Method to build tracking days section
  Widget _buildTrackingDaysSection() {
    final days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(days.length, (index) {
        return Column(
          children: [
            CircleAvatar(
              backgroundColor:
                  index == 2 ? Colors.orange : Colors.grey.shade200,
              child: Text(
                days[index],
                style: TextStyle(
                  color: index == 2 ? Colors.white : Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              height: 4,
              width: 30,
              color: index == 2 ? Colors.orange : Colors.transparent,
            ),
          ],
        );
      }),
    );
  }

  // Method to build health data list
  Widget _buildHealthDataList(BuildContext context, HomeController controller) {
    final healthData = controller.healthData;
    return Column(
      children: healthData.map((data) {
        int index =
            healthData.indexOf(data); // Get the index of the current data
        return Card(
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            leading: IconButton(
              icon: Icon(data.icon, color: Colors.orange),
              onPressed: () {
                // Show a menu to change the icon
                _showIconSelectionMenu(context, controller, index);
              },
            ),
            title: Text(
              data.title,
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '${data.value} - ${data.description}',
              style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
            ),
            trailing: Text(
              data.date,
              style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
            ),
          ),
        );
      }).toList(),
    );
  }

  // Method to show the icon selection menu
  void _showIconSelectionMenu(
      BuildContext context, HomeController controller, int index) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
          100, 100, 100, 100), // Customize position if needed
      items: [
        PopupMenuItem<IconData>(
          value: Icons.fitness_center,
          child: Row(
            children: [
              Icon(Icons.fitness_center, color: Colors.orange),
              SizedBox(width: 8),
              Text('Fitness'),
            ],
          ),
        ),
        PopupMenuItem<IconData>(
          value: Icons.favorite,
          child: Row(
            children: [
              Icon(Icons.favorite, color: Colors.red),
              SizedBox(width: 8),
              Text('Heart'),
            ],
          ),
        ),
        PopupMenuItem<IconData>(
          value: Icons.run_circle,
          child: Row(
            children: [
              Icon(Icons.run_circle, color: Colors.green),
              SizedBox(width: 8),
              Text('Run'),
            ],
          ),
        ),
      ],
    ).then((selectedIcon) {
      if (selectedIcon != null) {
        // Update the icon for the selected health data
        controller.updateHealthDataIcon(index, selectedIcon);
      }
    });
  }

  // Method to build following section
  Widget _buildFollowingSection(
      BuildContext context, HomeController controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/activity'),
          child: _buildFollowingCard(
              'Activity', '⭐ 2.0 points', Icons.directions_run, Colors.orange),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BodyScreen()),
          ),
          child: _buildFollowingCard(
              'Body', '87.9% msd', Icons.accessibility, Colors.purple),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HeartScreen()),
          ),
          child: _buildFollowingCard(
              'Hearth', '80.2 bpm', Icons.favorite, Colors.red),
        ),
      ],
    );
  }

  // Method to build following card
  Widget _buildFollowingCard(
      String title, String subtitle, IconData icon, Color color) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 30),
          const SizedBox(height: 8),
          Text(
            title,
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
