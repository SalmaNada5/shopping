import 'package:flutter/material.dart';
import 'package:shopping/qty_dropdown.dart';
import 'package:shopping/size_dropdown.dart';

// Use stateful :
//1 - set state
//2- mixin , state class with ....etc

// const => rebuild stateful only without const widgets
// reusable const widget => stateless widget not function !!
// rebuild to stateful => everytime you rebuild all functions would rebuild

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'My cart',
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
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.6, //manual shrink
            // child: ListView(
            //   children: const[
            //    ListViewChild(),
            //      ListViewChild(),
            //      ListViewChild(),
            //     ListViewChild(),
            //
            //   ],
            // ),
            child: ListView.builder(
              itemBuilder: (context, index) => const ListViewChild(),
              // physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              //shrinkWrap: true,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Subtotal(2 items) ',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '1120 €',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    Text(
                      'Delivery',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Spacer(),
                    Text('45 €', style: TextStyle(color: Colors.grey))
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black12,
                ),
                Row(
                  children: const [Text('total'), Spacer(), Text('1165 €')],
                ),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: null,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Text(
                        'Checkout',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewChild extends StatelessWidget {
  const ListViewChild({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 5),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 120,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage('images/image.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Dorothee Schumacher',
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.black12,
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Sleeveless blouse",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '449 €',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 16,
                width: 250,
                child: Row(
                  children: [
                    const Expanded(
                      child: SizeDropdown(),
                    ),
                    Container(
                      color: Colors.black12,
                      height: MediaQuery.of(context).size.height / 40,
                      width: 1.5,
                    ),
                    Container(
                      child: const QtyDropdown(),
                      width: MediaQuery.of(context).size.width / 3,
                      padding: const EdgeInsets.only(left: 5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
