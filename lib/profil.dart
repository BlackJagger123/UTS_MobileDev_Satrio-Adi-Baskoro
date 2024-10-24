import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatelessWidget {

  final String name = 'Satrio Adi Baskoro';
  final String email = 'satriia794@gmail.com';
  final String address = 'Gitik, Rogojampi, Banyuwangi';
  final String phone = '+62 853-3036-3431';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.blueAccent, // Sesuaikan warna dengan tema
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Selamat datang di halaman profil',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            ListTile(
              leading: Icon(Icons.person),
              title: Text('Nama'),
              subtitle: Text(name),
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text(email),
            ),
            Divider(),


            ListTile(
              leading: Icon(Icons.home),
              title: Text('Alamat'),
              subtitle: Text(address),
            ),
            Divider(),


            ListTile(
              leading: Icon(Icons.phone),
              title: Text('No. Telepon'),
              subtitle: Text(phone),
            ),
            Divider(),

            SizedBox(height: 10),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  SystemNavigator.pop();
                },
                icon: Icon(Icons.logout),
                label: Text('Keluar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
