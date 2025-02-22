import 'package:flutter/material.dart';

class ListaComisariaPage extends StatelessWidget {
  const ListaComisariaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: 150,
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 100, width: 180, color: Colors.amber),
                const Text(
                  'Comisarias',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.cable_rounded),
                    title: Text(
                      'Comisaria de tahuantinsuyo',
                      style: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Divider(
                    thickness: 4,
                  )
                ],
              );
            },
          ))
          /*Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: 6,                  
                  itemBuilder: (_, index) {
                    return ListTile(
                      title: Text('Comisaria de Wnchaq'),
                    );
                  }),
            ),
          ),*/
        ],
      ),
    );
  }
}
