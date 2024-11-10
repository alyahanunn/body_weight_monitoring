import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Heart Health Monitoring',
          style: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeartChartSection(),
            const SizedBox(height: 20),
            _buildHeartRateBreakdown(),
            const SizedBox(height: 20),
            _buildHeartHealthTips(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeartChartSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPeriodButton('Day', false),
            _buildPeriodButton('Week', true),
            _buildPeriodButton('Month', false),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 200,
          color: Colors.grey.shade200,
          child: Center(
            child: Text(
              'Heart Rate Chart Placeholder',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPeriodButton(String text, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: isSelected ? Colors.red : Colors.grey.shade200,
          foregroundColor: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {},
        child: Text(text),
      ),
    );
  }

  Widget _buildHeartRateBreakdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Heart Rate Breakdown',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildHeartRateTile('Resting HR', '60 bpm', Colors.green),
            _buildHeartRateTile('Avg HR', '75 bpm', Colors.orange),
            _buildHeartRateTile('Max HR', '120 bpm', Colors.red),
          ],
        ),
      ],
    );
  }

  Widget _buildHeartRateTile(String title, String value, Color color) {
    return Column(
      children: [
        Text(title, style: GoogleFonts.poppins(fontSize: 12)),
        const SizedBox(height: 5),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget _buildHeartHealthTips() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Heart Health Tips',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            '• Exercise regularly to improve heart health.\n'
            '• Maintain a balanced diet.\n'
            '• Monitor and manage stress.\n'
            '• Get enough sleep and rest.',
            style:
                GoogleFonts.poppins(fontSize: 14, color: Colors.grey.shade800),
          ),
        ),
      ],
    );
  }
}
