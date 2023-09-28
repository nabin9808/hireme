import 'package:flutter/material.dart';
import 'package:hireme/theme/colors.dart';
import 'package:hireme/theme/images.dart';
import 'package:hireme/ui/bottom_menu_bar.dart';
import 'package:hireme/ui/job_detail_page.dart';

class HomePage extends StatelessWidget {
  Widget _appBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(Images.hireme),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.notifications_none_rounded),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 6,
          ),
          Text("Find your professionals",
              style: TextStyle(
                  fontSize: 20,
                  color: KColors.title,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                      color: KColors.lightGrey,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Who are you looking for?",
                    style: TextStyle(fontSize: 15, color: KColors.subtitle),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                decoration: BoxDecoration(
                  color: KColors.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 40,
                child: IconButton(
                  color: KColors.primary,
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _recommendedSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      margin: EdgeInsets.symmetric(vertical: 12),
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, color: KColors.title),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _recommendedJob(context,
                    img: Images.teachers,
                    title: "Teacher",
                    sub: "9823486000 ",
                    company: "Skilled",
                    isActive: true),
                _recommendedJob(context,
                    img: Images.events,
                    title: "Dancer",
                    sub: "9823486000 ",
                    company: "Skilled",
                    isActive: false),
                _recommendedJob(context,
                    img: Images.cheographys,
                    title: "Cheographer",
                    sub: "9823486000 ",
                    company: "Skilled",
                    isActive: false),
                _recommendedJob(context,
                    img: Images.cameraman,
                    title: "Editor",
                    sub: "9823486000 ",
                    company: "Skilled",
                    isActive: false),
                _recommendedJob(context,
                    img: Images.cameraman,
                    title: "Events",
                    sub: "9823486000 ",
                    company: "Skilled",
                    isActive: false)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _recommendedJob(
    BuildContext context, {
    required String img,
    required String company,
    required String title,
    required String sub,
    bool isActive = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, JobDetailPage.getJobDetail());
        },
        child: AspectRatio(
          aspectRatio: 1.3,
          child: Container(
            decoration: BoxDecoration(
              color: isActive ? KColors.primary : Colors.white,
              borderRadius: BorderRadius.circular(7),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: isActive ? Colors.white : KColors.lightGrey,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset(img),
                ),
                SizedBox(height: 16),
                Text(
                  company,
                  style: TextStyle(
                    fontSize: 12,
                    color: isActive ? Colors.white38 : KColors.subtitle,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: isActive ? Colors.white : KColors.title,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  sub,
                  style: TextStyle(
                    fontSize: 12,
                    color: isActive ? Colors.white38 : KColors.subtitle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _recentPostedJob(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommended Professionals",
            style: TextStyle(fontWeight: FontWeight.bold, color: KColors.title),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.background,
      bottomNavigationBar: BottomMenuBar(),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _appBar(context),
                _header(context),
                _recommendedSection(context),
                _recentPostedJob(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
