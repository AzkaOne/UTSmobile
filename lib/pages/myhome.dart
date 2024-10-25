import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  final String userName;

  const Myhome({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg1.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'Selamat Datang',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  userName,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'Flutter Pemula',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text('Keluar'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
