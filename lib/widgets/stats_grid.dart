import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                _buildStatCard(
                  title: 'Total Cases',
                  count: '1.81 M',
                  color: Colors.orange,
                ),
                _buildStatCard(
                  title: 'Deaths',
                  count: '105 K',
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                _buildStatCard(
                  title: 'Recovered',
                  count: '391 K',
                  color: Colors.green,
                ),
                _buildStatCard(
                  title: 'Active Cases',
                  count: '1.3 M',
                  color: Colors.lightBlue,
                ),
                _buildStatCard(
                  title: 'Critical',
                  count: 'N/A',
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildStatCard({String title, String count, MaterialColor color}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              count,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
