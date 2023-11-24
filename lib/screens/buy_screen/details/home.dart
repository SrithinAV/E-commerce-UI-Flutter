import 'package:flutter/material.dart';
import 'package:e_commerce_ui_flutter/models/Product.dart';
import 'package:e_commerce_ui_flutter/screens/buy_screen/details/address_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.product_color});

  final Color product_color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[ Expanded(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Row(

                children: [
                  ReusableIcon(product_color: product_color, icons: Icons.person)
                  ,
                  ResuableBody(body: "Srithin A V"),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(children: [
                ReusableIcon(
                  product_color: product_color,
                  icons: Icons.home,
                ),
                ResuableBody(body: "House name: Arychirapattel\nHouse no: XX"),
              ]),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  ReusableIcon(product_color: product_color, icons: Icons.business),
                  ResuableBody(
                      body:
                      "City: banglore\nStreet: M.G Road\nLandmark: near church street\nState: Banglore -57XXXX")
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  ReusableIcon(product_color: product_color, icons: Icons.email),
                  ResuableBody(body: "XXXXXX@gmail.com"),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  ReusableIcon(product_color: product_color, icons: Icons.phone),
                  ResuableBody(body: "+91 85907XXXXX")
                ],
              )
            ],
          ),
        ),
      ),

        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){
                  print("pressed change");
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(20),
                  height: 50.00,
                  child: Center(child: Text("Change...",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.00,
                      color: Colors.white
                  ),)),
                  decoration: BoxDecoration(
                      color: product_color,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), // Shadow color
                          spreadRadius: 5, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: Offset(0, 3), // Offset
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20.00))

                  ),

                ),
              ),
            ),

            Expanded(
              child: GestureDetector(
                onTap: (){
                  print("pressed next");
                },
                child: Container(

                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(20),
                  height: 50.00,
                  child: Center(child: Text("Next",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.00,
                    color: Colors.white,
                  ),)),
                  decoration: BoxDecoration(

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), // Shadow color
                          spreadRadius: 5, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: Offset(0, 3), // Offset
                        ),
                      ],
                      color: product_color,
                      borderRadius: BorderRadius.all(Radius.circular(20.00))

                  ),

                ),
              ),
            ),

          ],

        ),
        SizedBox(height: 5.00,)
      ],
    );
  }
}
