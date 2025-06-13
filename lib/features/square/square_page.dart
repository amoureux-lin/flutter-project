import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SquarePage extends ConsumerStatefulWidget {
  const SquarePage({super.key});

  @override
  ConsumerState<SquarePage> createState() => _SquarePageState();
}

class _SquarePageState extends ConsumerState<SquarePage> {
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
                    child: Text("Square Page")
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
