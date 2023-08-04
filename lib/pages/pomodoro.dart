import 'package:flutter/material.dart';
import 'package:flutter_cod3r_pomodoro/components/cronometro.dart';
import 'package:flutter_cod3r_pomodoro/components/entrada_tempo.dart';
import 'package:flutter_cod3r_pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(
                  valor: store.tempoTrabalho,
                  titulo: 'Trabalho',
                ),
                EntradaTempo(
                  valor: store.tempoDescanso,
                  titulo: 'Descanso',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
