import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessagePage extends ConsumerStatefulWidget {
  const MessagePage({super.key});

  @override
  ConsumerState<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends ConsumerState<MessagePage> {
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
                    child: Text("Message Page")
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
