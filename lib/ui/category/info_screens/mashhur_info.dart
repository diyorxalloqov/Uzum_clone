import 'package:flutter/material.dart';
import 'package:uzum_clone/model/uzumModel.dart';

class MashhurInfoPage extends StatelessWidget {
  final Yangi data2;
  const MashhurInfoPage({super.key, required this.data2});

  @override
  Widget build(BuildContext context) {
    Size S = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey.shade100,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.share))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: S.height * 0.5,
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade50,
                image: DecorationImage(
                    image: NetworkImage(data2.img))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  data2.title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text('Narx:'),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(data2.narx),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      data2.chegirma,
                      style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.blueGrey.shade400),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 121, 255, 159),
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(8),
                              right: Radius.circular(8))),
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text(
                          "Katta sotuvlar",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Expanded(
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blueGrey[100]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.horizontal(left: Radius.circular(3),right: Radius.circular(3)),color: Colors.yellow.shade200),
                          child: Text(data2.oyiga)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: const Text("muddatli to'lov"),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          height: S.height * 0.09,
          elevation: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListTile(
                  title: const Text(
                    "Narxi",
                    style: TextStyle(fontSize: 15, color: Colors.black87),
                  ),
                  subtitle:  Text(
                    data2.narx,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple.shade600,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    child: const Text('SAVATGA'),
                  ),
                ),
              )
            ],
          )),
    );
  }
}