import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nasa_app/constants/colors.dart';
import 'package:nasa_app/widgets/global_widgets.dart';

import '../../constants/fonts.dart';
import 'home_widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: NestedScrollView(
          physics: const NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              backgroundColor: AppColors.black,
              elevation: 1,
              shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(20)),
              ),
              expandedHeight: 170.0,
              floating: true,
              pinned: true,
              snap: true,
              iconTheme: const IconThemeData(opacity: 0.0),
              flexibleSpace: HomeWidgets.bigCard(),
            ),
          ],
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // const Text(
                  //   'Image of the Day',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 20,
                  //     fontFamily: AppFonts.interFamily,
                  //     fontWeight: FontWeight.w600,
                  //   ),
                  // ),
                  const SizedBox(height: 10),

                  Wrap(
                    spacing: 15,
                    runSpacing: 10,
                    children: [
                      GlobalWidges.card(
                        'Images',
                        "https://www.sciencenews.org/wp-content/uploads/2022/12/121722_jwst_feat-1440x700.jpg",
                        ontap: () {},
                      ),
                      GlobalWidges.card(
                        'Videos',
                        "https://img.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/FRL3EDTJ7MI6XJTO4JYEN2PITA.jpg&w=1800",
                        ontap: () {},
                      ),
                      GlobalWidges.card(
                        'TV & Radio',
                        "https://media.zenfs.com/en/best_life_342/ac5f07215e7f2796146e5287de17dc20",
                        ontap: () {},
                      ),
                      GlobalWidges.card(
                        'Missions',
                        "https://media.istockphoto.com/id/613320160/photo/international-space-station-in-outer-space.jpg?s=612x612&w=0&k=20&c=PQSutAlO3koC4YFDMgJm9KvnRu0l03PQRr3PMCggJ3I=",
                        ontap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'News',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: AppFonts.interFamily,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 5),
                      GlobalWidges.card(
                        'News',
                        'https://assets.weforum.org/article/image/responsive_large_EvPNpeQbyJoSs48JryRtmXw-cG75-OMLBKH20FngB60.jpg',
                        ontap: () {},
                        width: Get.width * 0.9,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    width: Get.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {
                        //GOTO News
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.blue,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'See more',
                            style: TextStyle(
                              color: AppColors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 13,
                            color: AppColors.blue,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
