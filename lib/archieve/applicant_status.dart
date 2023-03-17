import 'package:flutter/material.dart';

class ApplicantStatus extends StatelessWidget {
  final String status;
  final IconData icon;
  final Color color;

  const ApplicantStatus({
    Key? key,
    required this.status,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(status)
        ],
      ),
    );
  }
}
