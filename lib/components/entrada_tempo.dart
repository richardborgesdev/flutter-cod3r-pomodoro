import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    Key? key,
    required this.titulo,
    required this.valor,
    this.inc,
    this.dec,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.titulo,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                shape: CircleBorder(),
              ),
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              onPressed: this.dec,
            ),
            Text(
              '${this.valor} min',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                shape: CircleBorder(),
              ),
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              onPressed: this.inc,
            ),
          ],
        ),
      ],
    );
  }
}
