import 'package:flutter/material.dart';

class StudentScreen extends StatelessWidget {
  const StudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Profile'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 50),
              ),
            ),
            const SizedBox(height: 20),
            _buildInfoRow(context, 'Name', 'John Doe'),
            const Divider(),
            _buildInfoRow(context, 'Student ID', 'S12345678'),
            const Divider(),
            _buildInfoRow(context, 'Grade', '10th Grade'),
            const Divider(),
            _buildInfoRow(context, 'Major', 'Computer Science'),
            const SizedBox(height: 40),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Placeholder for edit action
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Edit functionality coming soon!')),
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profile'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
