import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;

  const CronometroBotao({
    Key? key,
    required this.texto,
    required this.icone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.black,
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: 20,
            vertical: 10,
          )),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              icone,
              color: Colors.white,
              size: 25,
            ),
          ),
          Text(
            texto,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
