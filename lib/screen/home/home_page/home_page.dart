import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> avtStory = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/10.jpg",
  ];
  final List<String> posts = [
    "assets/images/post1.jpg",
    "assets/images/post2.jpg",
    "assets/images/post3.jpg",
    "assets/images/post4.jpg",
    "assets/images/post5.jpg",
    "assets/images/post6.jpg",
    "assets/images/post7.jpg",
    "assets/images/post8.jpg",
    "assets/images/post9.jpg",
    "assets/images/post10.png",
  ];
  final List<String> profileName = [
    'Hiếu',
    'Cute',
    'Đan',
    'Dương',
    'MyBaby',
    'Sugar',
    'salat',
    'Ếch',
    'Bala',
    'Bede',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.jpg',
          height: 40,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_bubble_outline),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Story
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  //TODO : Cái này mới này
                  avtStory.length,
                  (index) => Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: CircleAvatar(
                            radius: 40,
                            backgroundImage: const AssetImage(
                              'assets/images/edge_story.png',
                            ),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(
                                avtStory[index],
                              ),
                            )),
                      ),
                      Text(
                        profileName[index],
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Divider(), // TODO : Cái gì ấy nhỉ ?
            Column(
              children: List.generate(
                avtStory.length,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Post
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              avtStory[index],
                            ),
                          ),
                        ),
                        Text(profileName[index]),
                        const Spacer(), // TODO : Cái này cũng oke nè =)))
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert),
                        )
                      ],
                    ),
                    // Image Post
                    Image(
                      image: AssetImage(posts[index]),
                    ),
                    // Footer post
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.chat_bubble_outline),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send_outlined),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.bookmark_border),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Text('20 Likes'),
                          RichText(
                            text: TextSpan(
                                children: [TextSpan(text: 'Hiếu cute')]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
