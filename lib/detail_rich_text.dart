import 'package:agustina_tmdb/ui_constants.dart';
import 'package:flutter/material.dart';

class DetailRichText extends StatelessWidget {
  const DetailRichText({super.key, required this.subtitle, required this.text});

  final String subtitle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.movie_creation_outlined,
            color: Colors.white70,
          ),
          UIConstants.listIconSpace,
          Text(
            subtitle,
            style: UIConstants.subtitle,
          ),
          Expanded(
            child: Text(
              text,
              style: UIConstants.text,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
