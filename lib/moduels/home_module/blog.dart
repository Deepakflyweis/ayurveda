import 'package:ayurveda/utils/custom_appbar.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';
 

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppbar(title: "Bloggers"),
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Card(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 15.h,
                width: 95.w,
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Image.network(
                      "src",
                      height: 3.h,
                      width: 5.w,
                      fit: BoxFit.fill,
                      errorBuilder: (context, Object, StackTrace) =>
                          Center(
                        child: Image.asset("assets/images/doc.png",
                            height: 10.h,
                            width: 20.w,
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: 2.h,),
                    Expanded(
                      child: Text(
                          "Lorem ipsum dolor sit amet, at volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation.Lorem ipsum dolor sit amet, at volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation.",
                          style: TxtStyleL,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      )
            ,
    ));
  }
}
