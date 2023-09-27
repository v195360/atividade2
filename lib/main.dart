import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: const TabBarView(children: [
            TabPage(
              title: 'Vitória (Flip)',
              imagePath: '/home/vitoriacds/Imagens/vitoria.png',
              content:
                  'Vitória (ou Flip para os amigos) cursa o 4° ano de Sistemas de Informações e trabalha na CI&T atualmente. Já cursou técnico de Desenvolvimento de Sistemas e Química, mas decidiu não seguir a área de Química. \nEla gosta de sair com as amigas, jogar Valorant e assistir filmes de ficção cientifica. Apesar de não ser muito atleta, gosta de jogar handebol e basquete.',
            ),
            TabPage(
              title: 'Ricardo (dinho)',
              imagePath: '/home/vitoriacds/Imagens/ricardo.png',
              content:
                  'Para você que está chegando agora, seja bem-vindo! Deixa eu me apresentar, meu nome é Ricardo, tenho 19 anos, sou um entusiasta da tecnologia e justamente por isso atualmente estou cursando o último semestre de Análise e desenvolvimento de sistemas na Universidade Estadual de Campinas.',
            ),
            TabPage(
              title: 'TrucoNato',
              imagePath: '/home/vitoriacds/Imagens/truco.png',
              content:
                  'O TrucoNato é um aplicativo para todos os amantes e entusiastas do jogo de truco. Este aplicativo intuitivo e prático foi projetado para simplificar acontagem de pontos durante uma partida de truco e manter um registro completo de todas as partidas em sua conta pessoal, além de proporcionar uma facilidade em mostrar as estatísticas de vitórias e derrotas para que você possa dar aquela “alfinetada” no seu freguês.',
            ),
          ]),
          appBar: AppBar(
            title: const Text("Atividade 2"),
            backgroundColor: Color.fromARGB(255, 163, 31, 49),
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.face_3)),
              Tab(icon: Icon(Icons.face_6)),
              Tab(icon: Icon(Icons.chat_outlined))
            ]),
          ),
        ),
      ),
    );
  }
}

class TabPage extends StatelessWidget {
  final String title;
  final String imagePath;
  final String content;

  const TabPage({
    required this.title,
    required this.imagePath,
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text(
            title,
            style: TextStyle(
                shadows: [
                  Shadow(
                      blurRadius: 10, color: Color.fromARGB(255, 252, 248, 248))
                ],
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 77, 20, 10)),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  FittedBox(
                    fit: BoxFit.fitWidth, // Adjust this fit mode as needed
                    child: SizedBox(
                      width: 200, // Adjust the width of the image
                      height: 200, // Adjust the height of the image
                      child: Image.asset(imagePath),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 50), // Replace with your image widget
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 199, 197, 197),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 172, 170, 170)
                        .withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ), // Add padding around the content
              child: Text(
                content,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
