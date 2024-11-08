//memasukkan package yang dibutuhkan aplikasi
import 'package:english_words/english_words.dart'; //paket bahasa inggris
import 'package:flutter/material.dart'; //paket untuk tampilan UI (material UI)
import 'package:provider/provider.dart'; //paket interaksi


void main() {
  runApp(MyApp());
}

//membuat nilai abstrak dari statelessWidget (template aplikasi),aplikasinya bernama MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key}); //menunjukan bahwa aplikasi ini akan tetap, tidak berubah setelah di-build

  @override //mengganti nilai lama yg sudah ada di template, dengan nilai nilai yang baru (replace/overwrite)
  Widget build(BuildContext context) {
    //fungsi build adalah fungsi yg membangun UI (mengatur posisi widget,dst)
    //ChangeNotifierProvider mendengarkan/ mendeteksi semua interaksi yg terjadi di aplikasi
    return ChangeNotifierProvider(
      create: (context) => MyAppState(), //membuat satu state bernama MyAppState
      child: MaterialApp( //pada state ini, menggunakan style desain MaterialUI
        title: 'Namer App', //diberi judul Namer App
        theme: ThemeData( //data tema aplikasi, diberi nama deepOrange
          useMaterial3: true, //versi MaterialUI yg dipakai versi 3
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        home: MyHomePage(), //nama halaman "MyHomePage" yg menggunakan state "MyAppState"
      ),
    );
  }
}

//mendefinisikan MyAppstate
class MyAppState extends ChangeNotifier {
  //state MyAppState diisi dengan 2 kata random yg digabung. kata random tersebut disimpan di variable WordPair
  var current = WordPair.random();
}

//membuat layout pada halaman HomePage
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>(); //widget menggunakan state MyAppState
    var pair = appState.current; 

    return Scaffold( //base (canvas) dari layout
      body: Column( //diatas scaffold, ada body. body-nya, diberi kolom 
        children: [ //didalam kolom diberi teks 
          Text('A random AWESOME idea:'),
          BigCard(pair: pair),  //mengambil random  teks dari AppState pada variable WordPair current, lalu diubah menjadi huruf kecil semua, dan ditampilkan sebagai teks
          ElevatedButton( //membuat button timbul didalam body
            onPressed: () { //fungsi yg dieksekusi ketikan button ditekan
              print('button pressed!'); //tampilkan teks 'button pressed' diterminal saat button di tekan
            },
            child: 
            Text('Next'), //berikan  teks 'next' pada button (sebagai child)
          ),

        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);//menambahkan tema pada card 
    //membuat styel untuk text, diberi nama styel. styel warna mengikuti parrent
     final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    
    return Card(//membungkus padding didalam widget card
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(pair.asLowerCase),
        //mengubah kata dalam pair menjadi huruf kecil
      ), //padding
    ); //card
  }
}