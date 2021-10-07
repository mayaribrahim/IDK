// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idk_app/blocs/checkout/checkout_bloc.dart';
import 'package:idk_app/widgets/custom_appbar.dart';
import 'package:idk_app/widgets/widgets.dart';

class CheckoutScreen extends StatelessWidget {
  static const String routeName = '/checkout';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => CheckoutScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    final TextEditingController cityController = TextEditingController();
    final TextEditingController countryController = TextEditingController();
    final TextEditingController zipcodeController = TextEditingController();
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: CustomAppBar(
        title: 'Checkout',
      ),
      bottomNavigationBar: ElevatedButton(
        // ignore: prefer_const_constructors
        child: Text(
          'ORDER NOW',
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CUSTOMER INFORMATION',
                  style: Theme.of(context).textTheme.headline5,
                ),
                _buildTextFormField(emailController, context, 'Email'),
                _buildTextFormField(nameController, context, 'Full Name'),
                SizedBox(height: 50),
                Text(
                  'DELIVERY INFORMATION',
                  style: Theme.of(context).textTheme.headline5,
                ),
                _buildTextFormField(addressController, context, 'Address'),
                _buildTextFormField(cityController, context, 'City'),
                _buildTextFormField(countryController, context, 'Country'),
                _buildTextFormField(zipcodeController, context, 'Zip Code'),
              ],
            )),
      ),
    );
  }

  Padding _buildTextFormField(
    TextEditingController controller,
    BuildContext context,
    String labelText,
  ) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          SizedBox(
            width: 75,
            child: Text(
              labelText,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.only(left: 10),
                // ignore: prefer_const_constructors
                focusedBorder: UnderlineInputBorder(
                  // ignore: prefer_const_constructors
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
