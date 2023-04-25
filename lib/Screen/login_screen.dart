import 'package:flutter/material.dart';
import 'package:proyectlicorteca/Screen/escritorio_screen.dart';
//import 'package:proyectlicorteca/Screen/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FocusNode _focusNode = FocusNode();
  bool _obscureText = true;
  bool _isLoading = false;
  @override
  void initState() {
    //_isLoading = false;
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(
            FocusNode()); // Desenfocar el TextField al tocar en otra parte de la pantalla
      },
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent.shade200,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 200),
              Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'LICORTECA',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      //focusNode: _focusNode,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        hintText: 'User',
                        labelText: 'User',
                        labelStyle: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      //focusNode: _focusNode,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        hintText: 'Password',
                        labelText: 'Password',
                        labelStyle: const TextStyle(color: Colors.white),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        setState(() {
                          _isLoading = true;
                          //_isPressed = true;
                        });
                        Future.delayed(
                          const Duration(seconds: 3),
                          () {
                            setState(() {
                              _isLoading = false;
                            });
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                settings:
                                    const RouteSettings(name: '/pretemporal'),
                                builder: (context) => (const Escritorio()),
                              ),
                            );
                          },
                        );
                      },
                child:
                    _isLoading ? const Text('Ingresando') : const Text('Login'),
              ),
              const SizedBox(height: 25),
              TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => (const RegisterPersonScreen()),
                  //   ),
                  // );
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    Colors.black.withOpacity(0.1),
                  ),
                ),
                child: const Text(
                  '¿No tienes registrada tu empresa? ',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
