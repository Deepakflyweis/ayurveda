
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';


class ChatDetails extends StatefulWidget {
  const ChatDetails({Key? key}) : super(key: key);

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(title: "Dr. Name"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12),
            child: Column(
              children: [
              SizedBox(
                height: 75.h,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextFormField(
                  style: const TextStyle(color: whiteclr),
                  decoration: InputDecoration(
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                              color: whiteclr,
                              size: 25,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon:  const Icon(
                              Icons.file_present_outlined,
                              color: whiteclr,
                              size: 25,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.mic_none,
                              color: whiteclr,
                              size: 25,
                            )),
                      ],
                    ),
                    filled: true,
                    fillColor: btngreen,
                    hintText: 'Type a message',
                    hintStyle:
                        const TextStyle(color: whiteclr, fontWeight: FontWeight.w500),
                    contentPadding:const EdgeInsets.all(12),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
