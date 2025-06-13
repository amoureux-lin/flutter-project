import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submit() async {
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();
    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('请输入用户名和密码')));
      return;
    }

    if (mounted) {
      context.go('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    final loading = false;
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
                SizedBox(height: size.height * 0.15),
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
                  '欢迎回来',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  '请登录您的账号',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                const SizedBox(height: 40),
                // Login Form
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: '用户名',
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.grey[600],
                    ),
                    border: const UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: '密码',
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey[600],
                    ),
                    border: const UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                      ),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 40),
                // Login Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: loading ? null : _submit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                    ),
                    child: loading
                        ? const SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          )
                        : const Text(
                            '登录',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 24),
                // Register Link
                Center(
                  child: TextButton(
                    onPressed: () {
                      // TODO: Navigate to register page
                    },
                    child: Text(
                      '还没有账号？立即注册',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
