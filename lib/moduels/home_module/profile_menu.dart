import 'package:ayurveda/moduels/about_us/about_us.dart';
import 'package:ayurveda/moduels/digonistics/digonistics_screen.dart';
import 'package:ayurveda/moduels/home_module/blog.dart';
import 'package:ayurveda/moduels/home_module/terms_conditon.dart';
import 'package:ayurveda/moduels/medicine/medicine_home.dart';
import 'package:ayurveda/moduels/medicine/prescription_screen.dart';
import 'package:ayurveda/moduels/membership/membership_home.dart';
import 'package:ayurveda/utils/app_color.dart';
import 'package:ayurveda/utils/packages_used/essential.dart';
import 'package:ayurveda/utils/text_styles.dart';

class HomeProfileMenu extends StatelessWidget {
  const HomeProfileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 1.w,
              ),
              CircleAvatar(
                radius: 6.h,
                backgroundColor: blckclr,
                child: Image.asset('assets/images/profile.png'),
              ),
              SizedBox(
                width: 3.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Wick',
                    style: TxtStyleN,
                  ),
                  Text(
                    '+91 0123456789',
                    style: hintTxtStyle,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          const Divider(
            color: hinttxtclr,
            thickness: 0.8,
          ),
          SizedBox(
            height: 1.h,
          ),
          ListTile(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: Image.asset('assets/images/diag.png',
                width: 25, fit: BoxFit.cover),
            title: Text('Diagnostics Test', style: TxtStyleN),
            trailing: IconButton(
              onPressed: () {
                Get.to(() => const DigonisticsScreen());
              },
              icon:
                  const Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
            ),
          ),
          ListTile(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: Image.asset('assets/images/order.png',
                width: 25, fit: BoxFit.fitWidth),
            title: Text('Order Medicine', style: TxtStyleN),
            trailing: IconButton(
              onPressed: () {
                Get.to(() => const MedicineHome());
              },
              icon:
                  const Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
            ),
          ),
          ListTile(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: Image.asset('assets/images/carts.png',
                width: 25, fit: BoxFit.fitWidth),
            title: Text('My Cart', style: TxtStyleN),
            trailing: IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
            ),
          ),
          ListTile(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: Image.asset('assets/images/rx.png',
                width: 25, fit: BoxFit.fitWidth),
            title: Text('My Prescriptions', style: TxtStyleN),
            trailing: IconButton(
              onPressed: () {
                Get.to(() => const PrescriptionScreen());
              },
              icon:
                  const Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
            ),
          ),
          ListTile(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: Image.asset('assets/images/order.png',
                width: 25, fit: BoxFit.fitWidth),
            title: Text('Orders', style: TxtStyleN),
            trailing: IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
            ),
          ),
          ListTile(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: Image.asset('assets/images/wallet.png',
                width: 25, fit: BoxFit.fitWidth),
            title: Text('Wallet', style: TxtStyleN),
            trailing: IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
            ),
          ),
          ListTile(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: Image.asset('assets/images/mem.png',
                width: 25, fit: BoxFit.fitWidth),
            title: Text('Membership Card', style: TxtStyleN),
            trailing: IconButton(
              onPressed: () {
                Get.to(() => const MembershipHome());
              },
              icon:
                  const Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
            ),
          ),
          ListTile(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: Image.asset('assets/images/loyal.png',
                width: 25, fit: BoxFit.fitWidth),
            title: Text('Loyality Points', style: TxtStyleN),
            trailing: IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
            ),
          ),
          ListTile(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: const Icon(Icons.amp_stories, color: blckclr),
            title: Text('Blog', style: TxtStyleN),
            trailing: IconButton(
              onPressed: () {
                Get.to(() => const BlogScreen());
              },
              icon:
                  const Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
            ),
          ),
          ListTile(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: const Icon(Icons.terminal_sharp, color: blckclr),
            title: Text('Terms & Condition', style: TxtStyleN),
            trailing: IconButton(
              onPressed: () {
                Get.to(() => const TermsConditon());
              },
              icon:
                  const Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
            ),
          ),

          ListTile(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: const Icon(Icons.attribution_outlined, color: blckclr),
            title: Text('About Us', style: TxtStyleN),
            trailing: IconButton(
              onPressed: () {
                Get.to(() => const AboutUsScreen());
              },
              icon:
                  const Icon(Icons.arrow_forward_ios, size: 22, color: blckclr),
            ),
          ),
        ],
      ),
    );
  }
}
