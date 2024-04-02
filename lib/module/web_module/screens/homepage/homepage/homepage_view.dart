import 'package:customer_journey/module/web_module/services/services.dart';
import 'package:customer_journey/sevices/responsive.dart';
import 'package:flutter/material.dart';

class CustomerJourneyWebHomeView extends StatelessWidget {
  const CustomerJourneyWebHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomerJourneyWebHomeViewBody(),
    );
  }
}

class CustomerJourneyWebHomeViewBody extends StatelessWidget {
  const CustomerJourneyWebHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: Responsive.isMobile(context)
            ? CustomerJourneyWebServices
                .mobileCustomerJourneyWebHomepagelist.length
            : CustomerJourneyWebServices.customerJourneyWebHomepagelist.length,
        itemBuilder: (context, index) {
          return Responsive.isMobile(context)
              ? CustomerJourneyWebServices
                  .mobileCustomerJourneyWebHomepagelist[index]
              : CustomerJourneyWebServices
                  .customerJourneyWebHomepagelist[index];
        });
  }
}
