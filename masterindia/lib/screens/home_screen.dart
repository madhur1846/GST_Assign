import 'package:flutter/material.dart';
import 'gst_profile_screen.dart';
import 'error_screen.dart';
import 'dart:convert';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var parsedjson = json.decode(
        '{    "07AACCM9910C1ZP":       {        "gstin": "07AACCM9910C1ZP", "status":" ACTIVE",       "business_name": "Masters India Private Limited",        "place_of_business": "K-37, floor-,, Mandoli Industrial Area, North East, Delhi, 110093",        "additional_place_of_business": "Floor",          "state_jurisdiction": "Ward 74",        "center_jurisdiction": "RANGE - 139",        "taxpayer_type": "Regular",        "constitution_of_business": "Private Limited Company",          "date_of_registration": "01/07/2017",        "date_of_cancellation": "--"      },      "33AADCC0931C1ZA":      {        "gstin": "33AADCC0931C1ZA",   "status":" ACTIVE",     "business_name": "Carols Hospitality Private Limited",        "place_of_business": "Dummy Address Mandoli Industrial Area, North East, Delhi, 110093",        "additional_place_of_business": "Floor",        "state_jurisdiction": "Medavakkam",        "center_jurisdiction": "NA",        "taxpayer_type": "Regular",        "constitution_of_business": "Private Limited Company",        "date_of_registration": "01/07/2017",        "date_of_cancellation": "--"      },      "33AADCC0931C1ZG":      {        "gstin": "33AADCC0931C1ZG",   "status":" ACTIVE",     "business_name": "Cloudzen Software Labs Private Limited",          "place_of_business": "Dummy Address, Mandoli Industrial Area, North East, Delhi, 110093",        "additional_place_of_business": "Floor",          "state_jurisdiction": "NA",        "center_jurisdiction": "SERVICE TAX-III RANGE MYSORE",        "taxpayer_type": "Regular",        "constitution_of_business": "Private Limited Company",          "date_of_registration": "01/07/2017",        "date_of_cancellation": "--"      }      }  ');

    final textController = TextEditingController();
    String? gstn;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[600],
          elevation: 0,
          actions: [
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Icon(Icons.more_vert),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(25.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Select the type for',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'GST Number Search Tool',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        children: [
                          // Padding(padding: const EdgeInsets.only(left: 5)),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.425,
                              child: TextButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4.0, vertical: 6.0),
                                    child: Text(
                                      'Search GST Number',
                                      style:
                                          TextStyle(color: Colors.green[600]),
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.425,
                            child: TextButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  // backgroundColor:
                                  //     MaterialStateProperty.all(Colors.white),
                                ),
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Text(
                                    'GST Return Status',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Enter GST Number'),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: textController,
                        onChanged: (value) {
                          gstn = value;
                        },
                        enableInteractiveSelection: false,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: 'Ex: 07AACCM9910C1ZP ',
                            hintStyle: TextStyle(color: Colors.grey[500])),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green[800]),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => parsedjson[gstn] == null
                                        ? const ErrorScreen()
                                        : GstProfileScreen(
                                            gstno: gstn,
                                            gstn: parsedjson[gstn]["gstin"],
                                            businessName: parsedjson[gstn]
                                                ["business_name"],
                                            placeofbusiness: parsedjson[gstn]
                                                ["place_of_business"],
                                            additionalPlace: parsedjson[gstn][
                                                "additional_place_of_business"],
                                            status: parsedjson[gstn]["status"],
                                            stateJurisdiction: parsedjson[gstn]
                                                ["state_jurisdiction"],
                                            centerJurisdiction: parsedjson[gstn]
                                                ["center_jurisdiction"],
                                            taxpayerType: parsedjson[gstn]
                                                ["taxpayer_type"],
                                            constitutionofBusiness: parsedjson[
                                                    gstn]
                                                ["constitution_of_business"],
                                            dateOfRegistration: parsedjson[gstn]
                                                ["date_of_registration"],
                                            dateOfCancellation: parsedjson[gstn]
                                                ["date_of_cancellation"])),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text(
                                'Search',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
