import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'New hits',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.search_rounded,
            color: Colors.black,
            size: 25,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
            size: 25,
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 9 / 16,
          ),
          padding: const EdgeInsets.all(10),
          itemCount: 8,
          itemBuilder: (c, index) => GridViewElement(
            width: width,
            height: height,
          ),
        ),
      ),
    );
  }
}

class GridViewElement extends StatelessWidget {
  final double? width, height;
  const GridViewElement({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'screen2');
            },
            child: Container(
              height: height,
              width: width! / 2,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage('images/image.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Elisabetta Franche',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'slim fit floral dress',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '449 €',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '365 €',
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
