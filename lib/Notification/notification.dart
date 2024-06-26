import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../constant.dart';
import '../GlobalComponents/data_provider.dart';
import '../GlobalComponents/lms_model.dart';

class Notificationlist extends StatefulWidget {
  const Notificationlist({Key? key}) : super(key: key);

  @override
  State<Notificationlist> createState() => _NotificationlistState();
}

class _NotificationlistState extends State<Notificationlist> {
  List<LMSModel> listData = maanGetChatList();
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFEAD1),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.arrow_back_outlined)
                            .onTap(() => Navigator.pop(context)),
                        const SizedBox(width: 20.0),
                        Text(
                          'Notification',
                          style: kTextStyle.copyWith(
                              color: kTitleColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        PopupMenuButton(
                          padding: EdgeInsets.zero,
                          itemBuilder: (BuildContext bc) => [
                            PopupMenuItem(
                              child: Text(
                                'Mute Notification',
                                style: GoogleFonts.poppins(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                              value: "/Products",
                            ),
                            PopupMenuItem(
                              child: Text(
                                'Clear All',
                                style: GoogleFonts.poppins(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                              value: "/Products",
                            ),
                          ],
                          onSelected: (value) {
                            Navigator.pushNamed(context, '$value');
                          },
                        ),
                      ],
                    ),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Today',
                          style: kTextStyle.copyWith(
                              color: kTitleColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        children: listData.map(
                          (data) {
                            return SettingItemWidget(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              title: data.title.validate(),
                              subTitle: '5 min ago',
                              leading: Image.network(data.image.validate(),
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover)
                                  .cornerRadiusWithClipRRect(25),
                              trailing: Container(
                                height: 10.0,
                                width: 10.0,
                                decoration: BoxDecoration(
                                  color: kMainColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onTap: () {},
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
