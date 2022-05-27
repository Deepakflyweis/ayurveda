import 'package:ayurveda/moduels/chat_module/chat_details.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatHomeScreen extends StatefulWidget {
  const ChatHomeScreen({Key? key}) : super(key: key);

  @override
  State<ChatHomeScreen> createState() => _ChatHomeScreenState();
}

class _ChatHomeScreenState extends State<ChatHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: "Chats"),
        body: ListView.builder(
          itemCount: 15,
          shrinkWrap: true,                    
          itemBuilder: ((context, index) {
          return Padding(
            padding: EdgeInsets.all(
              12,
            ),
            child: InkWell(
              onTap: () {
                Get.to(() => ChatDetails());
              },
              child: Container(
                  alignment: Alignment.center,
                  width: 88.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                      color: whiteclr,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: hinttxtclr, width: 0.8),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(2, 2),
                        )
                      ]),
                  child: ListTile(
                    leading:   CircleAvatar(
                      backgroundColor: btngreen,
                      radius: 40,
                       child : Image.network(
                        "https://img.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7807.jpg?w=2000",
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text("Dr. Martin", style: TxtStyleN),
                    subtitle: Text("You: " + "Thanks a lot", style: TxtStyleL),
                    trailing: Text("2 days ago", style: TxtStyleL),
                  )),
            ),
          );
        })),
      ),
    );
  }
}
