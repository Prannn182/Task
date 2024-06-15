import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  final textStyle = const TextStyle(color: Colors.purple);

  const ChallengeCard({
    Key? key,
    required this.name,
    required this.average,
    required this.returns,
  }) : super(key: key);

  final String name;
  final String average;
  final String returns;

  @override
  Widget build(BuildContext context) {
    List<String> words = name.split(' ');

    String croppedName = words.length > 3 ? '${words.sublist(0, 3).join(' ')}...' : name;

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text("😎") ,
              const SizedBox(width: 18.0),
              Text(
                croppedName,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(average),
              Text(returns),
            ],
          ),
        ],
      ),
    );
  }
}
