import 'package:flutter/material.dart';
import 'package:taskskillpe/widgets/challenge_cards.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showTotalReturns = true;
  bool showLiveEvents = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: 360,
                height: 48,
                padding: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Color(0xFF898989),
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          'My Activity',
                          style: TextStyle(
                            color: Color(0xFF898989),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          child:  Icon(
                            Icons.share,
                            color: Color(0xFF898989),
                          ),
                        ),
                        SizedBox(width: 16),
                        Container(
                          padding:  EdgeInsets.all(4),
                          child:  Icon(
                            Icons.more_vert,
                            color: Color(0xFF898989),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              SizedBox(
                width: 360,
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            showTotalReturns = true;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 30),
                          decoration: ShapeDecoration(
                            color: showTotalReturns
                                ? Color(0xFF7E56DA)
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.arrow_downward,
                                      color: Color(0xFF898989),
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    'Total \nReturns',
                                    style: TextStyle(
                                      color: showTotalReturns
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 1.5,
                                      letterSpacing: 0.01,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Text(
                                '₹2000.34',
                                style: TextStyle(
                                  color: showTotalReturns
                                      ? Colors.white
                                      : Color(0xFF7E56DA),
                                  fontSize: 24,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 14),
                              Text(
                                'June 30 - Today',
                                style: TextStyle(
                                  color: showTotalReturns
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            showTotalReturns = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 30),
                          decoration: BoxDecoration(
                            color: !showTotalReturns
                                ? Color(0xFF7E56DA)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.2), width: 1),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.arrow_upward,
                                      color: Color(0xFF7E56DA),
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    'Total \nInvested',
                                    style: TextStyle(
                                      color: !showTotalReturns
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 1.5,
                                      letterSpacing: 0.01,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 14),
                              Text(
                                '₹2000.34',
                                style: TextStyle(
                                  color: !showTotalReturns
                                      ? Colors.white
                                      : Color(0xFF7E56DA),
                                  fontSize: 24,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 14),
                              Text(
                                'June 30 - Today',
                                style: TextStyle(
                                  color: !showTotalReturns
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Quick Tip: Lorem ipsum dolor sit amet consectetur. Lorem graa volutpat dui sollicitudin sociis feugiat diam to dui sollicitudin.',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(height: 16.0),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showLiveEvents = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: showLiveEvents
                          ? const Color(0xFF9463FF)
                          : Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    child: const Text(
                      'Live Events',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showLiveEvents = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: !showLiveEvents
                          ? const Color(0xFF9463FF)
                          : Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    child: const Text('Closed Events'),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Challenge Name',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
          color: Color.fromARGB(255, 21, 21, 21), // Color of the line
          height: 10, // Height of the line
          thickness: 1, // Thickness of the line
        ),
                    SizedBox(height: 16.0),
                    ChallengeCard(
                      name: 'Lorem ipsum dolor amet, consectetur...\n Qty=20 | Invest=20/-',
                      average: '₹2.78',
                      returns: '+ ₹200',
                    ),
                     Divider(
          color: Color.fromARGB(255, 167, 162, 162), // Color of the line
          height: 10, // Height of the line
          thickness: 1, // Thickness of the line
        ),
                    ChallengeCard(
                      name: 'Lorem ipsum dolor amet, consectetur...\n Qty=20 | Invest=20/-',
                      average: '₹2.78',
                      returns: '+ ₹200',
                    ),
                     Divider(
          color: Color.fromARGB(255, 167, 162, 162), // Color of the line
          height: 10, // Height of the line
          thickness: 1, // Thickness of the line
        ),
                    ChallengeCard(
                      name: 'Lorem ipsum dolor amet, consectetur...\n Qty=20 | Invest=20/-',
                      average: '₹2.78',
                      returns: '+ ₹200',
                    ),Divider(
          color: Color.fromARGB(255, 167, 162, 162), // Color of the line
          height: 10, // Height of the line
          thickness: 1, // Thickness of the line
        ),
                    
                    ChallengeCard(
                      name: 'Lorem ipsum dolor amet, consectetur...\n Qty=20 | Invest=20/-',
                      average: '₹2.78',
                      returns: '+ ₹200',
                    ),
                    Divider(
          color: Color.fromARGB(255, 167, 162, 162), // Color of the line
          height: 10, // Height of the line
          thickness: 1, // Thickness of the line
        ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
