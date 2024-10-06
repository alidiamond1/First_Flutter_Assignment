import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const Color customColor = Color.fromARGB(232, 255, 217, 0);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Global Design')),
        backgroundColor: customColor,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Background Image
            Image.asset(
              'images/plant.jpg',
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            // Content
            Card(
              // Card wrapped directly around content
              margin: const EdgeInsets.all(16.0), // Margin for spacing
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Keymaha duuleedka Baladweyne',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Mogadishu, Somalia',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.favorite, color: Colors.red),
                            SizedBox(width: 4),
                            Text('22', style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildIconButton(Icons.call, 'CALL', customColor),
                          _buildIconButton(Icons.near_me, 'ROUTE', customColor),
                          _buildIconButton(Icons.share, 'SHARE', customColor),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Padding(
                      // Padding for better text wrapping
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "In conclusion, technology is a powerful force that has undeniably shaped and continues to shape the trajectory of human civilization. Its potential benefits are immense, connecting us, empowering us, and driving progress. However, the challenges it presents – from inequality and misinformation to ethical dilemmas and job displacement – demand that we approach its development and implementation with careful consideration, foresight, and a commitment to responsible innovation. The future of humanity hinges on our ability to harness the power of technology while mitigating its potential harms, ultimately striving for a future where technology serves as a tool for progress and not a force of division or destruction.",
                        style: TextStyle(height: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: customColor,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label, Color color) {
    return Column(
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(color: color, fontSize: 12),
        ),
      ],
    );
  }
}
