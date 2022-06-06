import 'package:delivery_website_with_flutter/views/live_tracking_view.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:language_picker/language_picker.dart';
import 'package:language_picker/languages.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewPage extends StatefulWidget {
  const HomeViewPage({Key? key}) : super(key: key);

  @override
  State<HomeViewPage> createState() => _HomeViewPageState();
}

class _HomeViewPageState extends State<HomeViewPage> {
  Language _selectedDropdownLanguage = Languages.korean;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey,
                  ),
                  Positioned(
                    top: 10,
                    left: 20,
                    child: Container(
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: LanguagePickerDropdown(
                        initialValue: Languages.english,
                        onValuePicked: (Language language) {
                          _selectedDropdownLanguage = language;
                          // print(_selectedDropdownLanguage.name);
                          // print(_selectedDropdownLanguage.isoCode);
                        },
                      ),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.red,
                  ),
                  Positioned(
                    top: 20,
                    left: 30,
                    child: Container(
                      color: Colors.red,
                      height: 60,
                      width: 80,
                      child: Container(
                        height: 40,
                        width: 40,
                        child: SvgPicture.network(
                            'https://mppxs.csb.app/happy.svg'),
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text(''),
                collapsedBackgroundColor: Colors.grey,
                trailing: const Icon(Icons.menu),
                children: [
                  ListTile(
                    title: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Home',
                        style: TextStyle(),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextButton(
                      onPressed: () {},
                      child: const Text('Home'),
                    ),
                  ),
                  ListTile(
                    title: TextButton(
                      onPressed: () {},
                      child: const Text('Home'),
                    ),
                  ),
                  ListTile(
                    title: TextButton(
                      onPressed: () {},
                      child: const Text('Home'),
                    ),
                  ),
                  ListTile(
                    title: TextButton(
                      onPressed: () {},
                      child: const Text('Home'),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 700,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black,
                    child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl:
                            'https://images.unsplash.com/photo-1446776899648-aa78eefe8ed0?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172'),
                  ),
                  Container(
                    height: 700,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black.withOpacity(0.9),
                    // child: CachedNetworkImage(
                    //     fit: BoxFit.cover,
                    //     imageUrl:
                    //         'https://image.shutterstock.com/image-vector/dark-vector-art-map-rennes-600w-1899224302.jpg'),
                  ),
                  const Positioned(
                    top: 60,
                    left: 40,
                    child: Text(
                      'WE\n CAN \n DELIVER',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 250,
                    left: 80,
                    child: Text(
                      'YOUR\n CARGO\n WORLDWIDE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    child: Container(
                      height: 200,
                      width: 300,
                      // color: Colors.grey.withOpacity(0.5),
                      color: const Color.fromARGB(100, 22, 44, 33),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Track Your Shipment',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const TrackingView(),
                                ),
                              );
                            },
                            child: const Text('TRACK NOW'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Column(
                    children: [
                      CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              'https://i.pinimg.com/736x/5d/95/38/5d95381726fea01966a317b8943b1b87.jpg'),
                      const Text(
                        'SEA FRIGHT',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'We  are one of the biggest shipping company around ,\n our container ships and bulk couriers are used in \n ports all over the world',
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('TRACK NOW'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              'https://i.pinimg.com/736x/5d/95/38/5d95381726fea01966a317b8943b1b87.jpg'),
                      const Text(
                        'SEA FRIGHT',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'We  are one of the biggest shipping company around ,\n our container ships and bulk couriers are used in \n ports all over the world',
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('TRACK NOW'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              'https://i.pinimg.com/736x/5d/95/38/5d95381726fea01966a317b8943b1b87.jpg'),
                      const Text(
                        'SEA FRIGHT',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'We  are one of the biggest shipping company around ,\n our container ships and bulk couriers are used in \n ports all over the world',
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('TRACK NOW'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              'https://i.pinimg.com/736x/5d/95/38/5d95381726fea01966a317b8943b1b87.jpg'),
                      const Text(
                        'SEA FRIGHT',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'We  are one of the biggest shipping company around ,\n our container ships and bulk couriers are used in \n ports all over the world',
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('TRACK NOW'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: Column(
                    children: [
                      const Text(
                        'ALLY EXPRESS dELIVERY HOME',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              'https://i.pinimg.com/736x/5d/95/38/5d95381726fea01966a317b8943b1b87.jpg'),
                      const Text(
                        'SEA FRIGHT',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'We  are one of the biggest shipping company around ,\n our container ships and bulk couriers are used in \n ports all over the world We  are one of the biggest shipping company around ,\n our container ships and bulk couriers are used in \n ports all over the worldWe  are one of the biggest shipping company around ,\n our container ships and bulk couriers are used in \n ports all over the worldWe  are one of the biggest shipping company around ,\n our container ships and bulk couriers are used in \n ports all over the worldWe  are one of the biggest shipping company around ,\n our container ships and bulk couriers are used in \n ports all over the world',
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 30,
                  width: 150,
                  color: Colors.red,
                  child: const Center(child: Text('WE ARE EVERYWHERE')),
                ),
                Card(
                  child: Container(
                    height: 400,
                    width: 350,
                    color: Colors.red,
                    child: const Center(child: const Text('map')),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Icon(Icons.speaker),
                    SizedBox(
                      width: 5,
                    ),
                    Text('SCROLLING  ADVERTISEMENT'),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                // Container(
                //   height: 100,
                //   width: 350,
                //   color: Colors.grey,
                //   child:
                // ),
                Card(
                  child: CarouselSlider(
                    options: CarouselOptions(height: 100, autoPlay: true),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration:
                                  const BoxDecoration(color: Colors.amber),
                              child: Center(
                                child: Text(
                                  'text $i',
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.red,
                  thickness: 3,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('About AllyExpress Delivery Service'),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  children: const [
                    Text('Home'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Home'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Home'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Home'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Home'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Home'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Home'),
                  ],
                ),
                const Divider(),
                Wrap(
                  children: const [
                    Text('Support:'),
                    Text(' Request for quote'),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Contact'),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text('Copy right @ 2020 All Rights Reserved'),
                  ],
                ),
                Wrap(
                  children: const [
                    Text(
                        'Ally Express Delivery Parcel Powered by mega web Design.\n Always stay connected with us'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: CachedNetworkImage(
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/512/174/174855.png'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: CachedNetworkImage(
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/512/174/174848.png'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: CachedNetworkImage(
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/512/174/174876.png'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: CachedNetworkImage(
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/512/174/174857.png'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
