import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:language_picker/language_picker_dropdown.dart';
import 'package:language_picker/languages.dart';

class TrackingView extends StatefulWidget {
  const TrackingView({Key? key}) : super(key: key);

  @override
  State<TrackingView> createState() => _TrackingViewState();
}

class _TrackingViewState extends State<TrackingView> {
  Language _selectedDropdownLanguage = Languages.korean;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                    ),
                    Positioned(
                      right: 20,
                      bottom: 80,
                      child: Container(
                        height: 50,
                        width: 170,
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Track Shipment',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 30,
                      child: Container(
                        height: 50,
                        width: 200,
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Request for Quote',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Text(
                        'Live Tracking',
                        style: TextStyle(fontSize: 24, color: Colors.red),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                          'All Deliveries are electronically tracked,All Deliveries are electronically tracked \n All Deliveries are electronically tracked,All Deliveries are electronically tracked'),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Card(
                          color: Colors.grey.shade300,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter your Tracking Number Here',
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 3)),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red,
                                  ),
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => const TrackingView(),
                                    //   ),
                                    // );
                                  },
                                  child: const Text('TRACK NOW'),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: 'Example Tracking: ',
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(
                                            text: ' E-EDR234',
                                            style: TextStyle(
                                              color: Colors.red,
                                            ))
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: CachedNetworkImage(
                                imageUrl:
                                    'https://cdn-icons-png.flaticon.com/512/174/174855.png'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: CachedNetworkImage(
                                imageUrl:
                                    'https://cdn-icons-png.flaticon.com/512/174/174848.png'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: CachedNetworkImage(
                                imageUrl:
                                    'https://cdn-icons-png.flaticon.com/512/174/174876.png'),
                          ),
                          const SizedBox(
                            width: 10,
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
            ),
          ],
        ),
      ),
    );
  }
}
