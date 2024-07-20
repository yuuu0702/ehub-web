import 'package:ehub_web/page/profile_with_mini_level.dart';
import 'package:ehub_web/widgets/common/my_title.dart';
import 'package:flutter/material.dart';

class RecentUserArea extends StatelessWidget {
  const RecentUserArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyTitle(text: 'Recent Users'),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: ProfileWithMiniLevel(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
