import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  const ContadorPage({ Key? key }) : super( key: key );

  @override
  State<ContadorPage> createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  final TextStyle _textStyle = TextStyle( fontSize: 25 );
  int _counter = 0;

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
              'Número de taps',
              style: _textStyle,
            ),
            Text(
              '$_counter', 
              style: _textStyle,
            ),
          ],
        ),
      ),
      floatingActionButton: _createFloatingActionButton(),
    );
  }

  Widget _createFloatingActionButton() {
    return Row( 
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const SizedBox( width: 30 ),
        FloatingActionButton( child: const Icon( Icons.exposure_zero ), onPressed: _reset ),
        const Expanded( child: SizedBox(), ),
        FloatingActionButton( child: const Icon( Icons.remove ), onPressed: _remove ),
        const SizedBox( width: 5 ),
        FloatingActionButton( child: const Icon( Icons.add ), onPressed: _add )
      ]
    );

  }

  void _add() {
    setState(() {
      _counter++;
    });
  }

  void _remove() {
    setState(() {
      _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

}