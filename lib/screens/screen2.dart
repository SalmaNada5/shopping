import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping/size_dropdown.dart';
import '../qty_dropdown.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool hasPressed = true;

  PageController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
            Icons.shopping_bag_outlined,
            color: Colors.black,
            size: 25,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 2,
            child: PageIndicatorContainer(
              child: PageView.builder(
                itemCount: 4,
                controller: controller,
                itemBuilder: (BuildContext context, int index) =>
                    const PageViewContainer(),
              ),
              length: 4,
              padding: const EdgeInsets.all(15),
              indicatorColor: Colors.grey,
              indicatorSelectorColor: Colors.black,
              indicatorSpace: 10.0,
              align: IndicatorAlign.bottom,
              shape: IndicatorShape.roundRectangleShape(
                size: const Size(18, 3),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'Elisabetta Franche',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.drive_folder_upload,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ],
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
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      '10% OFF | 445 €',
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '449 €',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 13,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.black12,
                        width: 1,
                      ),
                      bottom: BorderSide(
                        color: Colors.black12,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          child: const SizeDropdown(),
                        ),
                      ),
                      Container(
                        color: Colors.black12,
                        height: MediaQuery.of(context).size.height / 30,
                        width: 1.5,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width / 3,
                        child: const QtyDropdown(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          hasPressed = !hasPressed;
                        });
                      },
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(50),
                              ),
                              border: Border.all(
                                color: Colors.black12,
                                width: 2,
                              )),
                          child: hasPressed
                              ? const Icon(
                                  FontAwesomeIcons.heart,
                                  color: Colors.black,
                                  size: 20,
                                )
                              : const Icon(
                                  FontAwesomeIcons.solidHeart,
                                  color: Colors.red,
                                  size: 20,
                                )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'screen3');
                      },
                      child: Container(
                        width: 250,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black,
                        ),
                        child: const Center(
                          child: Text(
                            'Add to cart',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PageViewContainer extends StatelessWidget {
  const PageViewContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 35, left: 5, right: 5),
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        image: DecorationImage(
          image: AssetImage('images/image.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
