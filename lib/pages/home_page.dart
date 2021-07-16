import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final _textStyle = const TextStyle( fontSize: 25 );

  const HomePage({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi primera app en Flutter 🤣'),
        centerTitle: true,
        elevation: 0,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de clicks',
              style: _textStyle,
            ),
            Text(
              '0', 
              style: _textStyle,
            ),
          ],
        ),
      ),
      floatingActionButton: _createFloatingActionButton()
    );
  }

}

Widget _createFloatingActionButton() {
  return FloatingActionButton(
    child: const Icon( Icons.add ),
    onPressed: () {
      print( 'Hola mundo' );
      //_counter++;
    },
  );
}