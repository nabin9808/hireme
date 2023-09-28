import 'package:flutter/material.dart';
import 'package:hireme/theme/colors.dart';
import 'package:hireme/theme/images.dart';
import 'package:hireme/ui/job_detail_page.dart';

class TeacherList extends StatefulWidget {
  const TeacherList({super.key});

  @override
  State<TeacherList> createState() => _TeacherListState();
}

class _TeacherListState extends State<TeacherList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recommended Professionals",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: KColors.title),
            ),
            _jobCard(context,
                img: Images.user1,
                title: "Ganesh",
                subtitle: "Teacher",
                salery: "98000000"),
            _jobCard(context,
                img: Images.user2,
                title: "Mahesh",
                subtitle: "Dancer",
                salery: "98000000"),
            _jobCard(context,
                img: Images.user3,
                title: "Saroj",
                subtitle: "Videographer",
                salery: "98547624"),
            _jobCard(context,
                img: Images.user4,
                title: "Anup",
                subtitle: "Editor",
                salery: "95000000"),
          ],
        ),
      ),
    );
  }

  Widget _jobCard(
    BuildContext context, {
    required String img,
    required String title,
    required String subtitle,
    required String salery,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, JobDetailPage.getJobDetail());
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        margin: EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: KColors.lightGrey,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Image.asset(img),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 12, color: KColors.subtitle),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                      fontSize: 14,
                      color: KColors.title,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
