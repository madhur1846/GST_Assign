import 'package:flutter/material.dart';

class GstProfileScreen extends StatelessWidget {
  final String? gstno;
  final String gstn;
  final String businessName;
  final String placeofbusiness;
  final String additionalPlace;
  final String status;
  final String stateJurisdiction;
  final String centerJurisdiction;
  final String taxpayerType;
  final String constitutionofBusiness;
  final String dateOfRegistration;
  final String dateOfCancellation;
  const GstProfileScreen(
      {Key? key,
      required this.gstno,
      required this.gstn,
      required this.businessName,
      required this.placeofbusiness,
      required this.additionalPlace,
      required this.status,
      required this.stateJurisdiction,
      required this.centerJurisdiction,
      required this.taxpayerType,
      required this.constitutionofBusiness,
      required this.dateOfRegistration,
      required this.dateOfCancellation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GST Profile'),
        backgroundColor: Colors.green[600],
        elevation: 0,
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
                    'GSTIN of the Tax Payer',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    gstn,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    businessName,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 12),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.green[600],
                            size: 10,
                          ),
                          Text(
                            status,
                            style: TextStyle(color: Colors.green[600]),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey[100]),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey[200],
                                  radius: 15,
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.green[600],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14),
                                  child: SizedBox(
                                    height: 50,
                                    width: 1,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200])),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.grey[200],
                                  radius: 15,
                                  child: Icon(
                                    Icons.account_balance,
                                    color: Colors.green[600],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Principle Base of Business',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey[600]),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      placeofbusiness,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Additional Place of Busines',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey[600]),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      additionalPlace,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          JurisdictionType(
                              title: 'State Jurisdiction',
                              body: stateJurisdiction),
                          // const SizedBox(
                          //   width: 8,
                          // ),
                          JurisdictionType(
                              title: 'Center Jurisdiction',
                              body: centerJurisdiction),
                          // const SizedBox(
                          //   width: 8,
                          // ),
                          JurisdictionType(
                              title: 'Taxpayer Type', body: taxpayerType),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Constitution of Business',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[600]),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              constitutionofBusiness,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Date of Registration',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey[600]),
                                ),
                                Text(
                                  'Date of Cancellation',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey[600]),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  dateOfRegistration,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  dateOfCancellation,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green[800]),
            ),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(6.0),
              child: Text(
                'GST Return Filing Status',
                style: TextStyle(color: Colors.white),
              ),
            )),
      ),
    );
  }
}

class JurisdictionType extends StatelessWidget {
  const JurisdictionType({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(fontSize: 9, color: Colors.grey[600])),
              const SizedBox(
                height: 5,
              ),
              Text(
                body,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 13.25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
