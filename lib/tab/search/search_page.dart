import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);
  final List<String> _images = [
    'assets/joobong1.jpeg',
    'assets/joobong2.jpeg',
    'assets/joobong3.jpeg',
    'assets/youth1.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('오늘의 쓰레기 🗑️', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: GridView.builder(
          itemCount: _images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //열
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            final images = _images[index];
            return Image.asset(
              images,
              fit: BoxFit.cover,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.create_outlined,),
      ),
    );
  }
}
