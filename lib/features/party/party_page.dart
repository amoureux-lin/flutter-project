import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PartyPage extends ConsumerStatefulWidget {
  const PartyPage({super.key});

  @override
  ConsumerState<PartyPage> createState() => _PartyPageState();
}

class _PartyPageState extends ConsumerState<PartyPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo
                Center(
                    child: Text("Party Page")
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
