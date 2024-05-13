//Pantalla de login
//Correo
//Google
//Continuar sin cuenta (anonimo)
//Recuperar contraseña
//Crear cuenta

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final key = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          //Fondo
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.amber, Colors.red],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          //Icono en un container con fondo blanco
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 100),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset('assets/img/flan.png'),
            ),
          ),
          //Titulo
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 200),
              child: const Text(
                'OnlyFlans',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //Formulario
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(top: 280),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              constraints: const BoxConstraints(maxHeight: 550),
              child: Form(
                key: key,
                child: Column(
                  children: [
                    const Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: 'Correo',
                        iconColor: Colors.black,
                        fillColor: Colors.black,
                        labelStyle: TextStyle(color: Colors.black87),
                        errorStyle: TextStyle(color: Colors.red),
                        icon: Icon(
                          Icons.email,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Por favor, ingrese su correo';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.done,
                      controller: passwordController,
                      onEditingComplete: () {
                        //Cerrar teclado
                        FocusScope.of(context).unfocus();
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Contraseña',
                        iconColor: Colors.black,
                        fillColor: Colors.black,
                        labelStyle: TextStyle(color: Colors.black87),
                        errorStyle: TextStyle(color: Colors.red),
                        icon: Icon(Icons.lock),
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Por favor, ingrese su contraseña';
                        }
                        return null;
                      },
                    ),
                    //Espaciado
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {}
                      },
                      child: const Text('Iniciar sesión'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Recuperar contraseña',
                          style: TextStyle(color: Colors.amber[900]!)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("No tienes cuenta?"),
                        TextButton(
                          onPressed: () {},
                          child: Text('Crear cuenta',
                              style: TextStyle(color: Colors.amber[900]!)),
                        ),
                      ],
                    ),
                    const Text("O inicia sesión con"),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.amber,
                      ),
                      child: Image.asset(
                        "assets/img/google_logo_icon.png",
                        width: 30,
                      ),
                      onPressed: () {},
                    ),
                    //Iniciar sesion anonima

                    TextButton.icon(
                      icon: const Icon(Icons.person_2_outlined),
                      onPressed: () {},
                      label: Text('Continuar sin cuenta',
                          style: TextStyle(color: Colors.amber[900]!)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
