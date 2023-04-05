import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I AM POOR',
      home: Scaffold(
        appBar: AppBar(
          title: Text('I AM POOR'),
          centerTitle: true,
          backgroundColor: Colors.purple[700],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return DetailScreen(
                      imageUrl: 'https://static01.nyt.com/images/2021/05/17/business/14altGates-print/merlin_183135423_1167fa8a-7940-427e-b690-68876010d286-articleLarge.jpg?quality=75&auto=webp&disable=upscale',
                      tag: 'bill',
                    );
                  }));
                },
                child: Hero(
                  tag: 'bill',
                  child: Image.network(
                    'https://static01.nyt.com/images/2021/05/17/business/14altGates-print/merlin_183135423_1167fa8a-7940-427e-b690-68876010d286-articleLarge.jpg?quality=75&auto=webp&disable=upscale',
                    width: 130,
                    height: 130,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return DetailScreen(
                      imageUrl: 'https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X_400x400.jpg',
                      tag: 'elon',
                    );
                  }));
                },
                child: Text('Elon Amca'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple[700],
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return DetailScreen(
                      imageUrl: 'https://static.toiimg.com/photo/msid-67586673/67586673.jpg?resizemode=4&width=400',
                      tag: 'jeff',
                    );
                  }));
                },
                child: Hero(
                  tag: 'jeff',
                  child: Image.network(
                    'https://static.euronews.com/articles/stories/06/64/47/22/320x180_cmsv2_087b6758-f0c2-5c93-bf1e-2b68e8f16ca3-6644722.jpg',
                    width: 130,
                    height: 130,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return DetailScreen(
                      imageUrl: 'https://static.euronews.com/articles/stories/06/64/47/22/320x180_cmsv2_087b6758-f0c2-5c93-bf1e-2b68e8f16ca3-6644722.jpg',
                      tag: 'mark',
                    );
                  }));
                },

                child: Text('Mark Amca'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple[700],
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String imageUrl;
  final String tag;

  DetailScreen({required this.imageUrl, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: tag,
              child: Image.network(
                imageUrl,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'I AM POOR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'But I am still dreaming!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
