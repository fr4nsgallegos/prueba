import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: PrimeraPantalla()));
}

class PrimeraPantalla extends StatelessWidget {
  const PrimeraPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    double alturaPantalla = MediaQuery.of(context).size.height;
    double anchoPantalla = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Mi primer app")),
      body: Column(
        children: [
          Text("texto1"),
          Text("texto2"),
          Text("texto3"),
          Image.network(
            "https://images.unsplash.com/photo-1726066012801-14d892021339?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3Dhttps://images.unsplash.com/photo-1726066012801-14d892021339?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            height: anchoPantalla * 0.5,
            width: anchoPantalla * 0.5,
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
          Image.asset(
            "assets/images/imagen1.jpeg",
            height: anchoPantalla * 0.5,
            width: anchoPantalla * 0.5,
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),

          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              print("Hola mundo");
            },
            child: Text("Presionar"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10,
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              print("Presionado corto");
            },
            icon: Icon(Icons.thumb_up),
            label: Text("Me gusta"),
            onLongPress: () {
              print("Presionado largo");
            },
          ),
        ],
      ),
    );
  }
}
