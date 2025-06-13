import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonalPage extends ConsumerStatefulWidget {
  const PersonalPage({super.key});

  @override
  ConsumerState<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends ConsumerState<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo
                Center(
                  child: Icon(
                    Icons.games,
                    size: 60,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(height: 40),
                // Welcome Text
                const Text(
                  'Personal',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
