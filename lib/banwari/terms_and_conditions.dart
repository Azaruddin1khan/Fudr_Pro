import 'package:flutter/material.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffafafa),
      appBar: AppBar(
        title: const Text(
          'Terms & Conditions',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 5),
              child: Text(
                  "This document is an electronic record in terms of Information Technology Act, 2000 and rules there under as applicable and the amended provisions pertaining to electronic records in various statutes as amended by the Information Technology Act, 2000. This document is published in accordance with the provisions of Rule 3 (1) of the Information Technology (Intermediaries guidelines) Rules, 2011 that require publishing the rules and regulations, privacy policy and Terms of Use for access or usage of fudr.in website."),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    'Terms Of Use',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 5),
              child: Text(
                "1. These terms of use (the “ Terms of Use”) govern your use of our website fudr.in (the “ Website”). The Website is referred to as the “Platform”. Please read these Terms of Use carefully before you use the services. If you do not agree to these Terms of Use, you may not use the services on the Platform. By using the Platform, you shall be contracting with December Technologies Pvt. Ltd. and you signify your acceptance to the Terms of Use and other December Technologies policies (including but not limited to the Cancellation & Refund Policy, Privacy Policy and Take Down Policy) as posted on the Platform from time to time, which takes effect on the date on which you download, install or use the Services, and create a legally binding arrangement to abide by the same.",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 5, top: 5),
              child: Text(
                  "2. The Platform is operated and owned by December Technologies Private Limited, a company incorporated under the Companies Act, 1956 and having its registered office at 189, Vivek Vihar, New Sanganer Road, Sodala, Jaipur - 302019. For the purpose of these Terms of Use, wherever the context so requires, ”you” shall mean any natural or legal person who has agreed to become a buyer or customer on the Platform by providing Registration Data while registering on the Platform as a registered user using any computer systems. The terms “Fudr”, “we”, “us” or “our” shall mean December Technologies Private Limited."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 5, top: 5),
              child: Text(
                  "3. Fudr enables transactions between participant restaurants/merchants and buyers, dealing in prepared food and beverages (“ Platform Services”). The buyers (“ Buyer/s”) can place orders (“ Orders”) from variety of products listed and offered for sale by merchants including but not limited to the restaurants and eateries (“ Merchant/s”), on the Platform and Fudr enables to identify the location of Buyer with in the premises of participant restaurants/merchants."),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    '4.AMENDMENTS',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 5),
              child: Text(
                  "These Terms of Use are subject to modifications at any time. We reserve the right to modify or change these Terms of Use and other Fudr policies at any time by posting changes on the Platform, and you shall be liable to update yourself of such changes, if any, by accessing the changes on the Platform. You shall, at all times, be responsible for regularly reviewing the Terms of Use and the other Fudr policies and note the changes made on the Platform. Your continued usage of the services after any change is posted constitutes your acceptance of the amended Terms of Use and other Fudr policies. As long as you comply with these Terms of Use, Fudr grants you a personal, non-exclusive, non-transferable, limited privilege to access, enter, and use the Platform. By accepting these Terms of Use, you also accept and agree to be bound by the other terms and conditions and Fudr policies (including but not limited to Cancellation & Refund Policy, Privacy Policy and Notice and Take Down Policy) as may be posted on the Platform from time to time."),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    '5.Use of Platform and Services',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5),
              child: Text(
                  "1. All commercial/contractual terms are offered by and agreed to between Buyers and Merchants alone. The commercial/contractual terms include without limitation price, taxes, shipping costs, payment methods, payment terms, date, period and mode of delivery, warranties related to products and services and after sales services related to products and services. Fudr does not have any control or does not determine or advise or in any way involve itself in the offering or acceptance of such commercial/contractual terms between the Buyers and Merchants. Fudr may, however, offer support services to Merchants in respect to order fulfilment, payment collection, call centre, and other services, pursuant to independent contracts executed by it with the Merchants."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "2. Fudr does not make any representation or warranty as to the item-specifics (such as legal title, creditworthiness, identity, etc.) of any of the Merchants. You are advised to independently verify the bona fides of any particular Merchant that you choose to deal with on the Platform and use your best judgment in that behalf. All Merchant offers and third party offers are subject to respective party terms and conditions. Fudr takes no responsibility for such offers."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "3. Fudr neither make any representation or warranty as to specifics (such as quality, value, salability, etc.) of the products or services proposed to be sold or offered to be sold or purchased on the Platform nor does implicitly or explicitly support or endorse the sale or purchase of any products or services on the Platform. Fudr accepts no liability for any errors or omissions, whether on behalf of itself or third parties."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "4. Fudr is not responsible for any non-performance or breach of any contract entered into between Buyers and Merchants on the Platform. Fudr cannot and does not guarantee that the concerned Buyers and/or Merchants will perform any transaction concluded on the Platform. Fudr is not responsible for unsatisfactory or non-performance of services or damages or delays as a result of products which are out of stock, unavailable or back ordered."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "5. Fudr assumes the role of facilitator, and does not at any point of time during any transaction between Buyer and Merchant on the Platform come into or take possession of any of the products or services offered by Merchant. At no time shall Fudr hold any right, title or interest over the products nor shall Fudr have any obligations or liabilities in respect of such contract entered into between Buyer and Merchant."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "6. Fudr is only providing a platform for communication and it is agreed that the contract for sale of any of the products or services shall be a strictly bipartite contract between the Merchant and the Buyer. In case of complaints from the Buyer pertaining to food efficacy, quality, or any other such issues, Fudr shall notify the same to Merchant. The Merchant shall be liable for redressing Buyer complaints. In the event you raise any complaint on any Merchant accessed using our Platform, we shall assist you to the best of our abilities by providing relevant information to you,such as details of the Merchant and the specific Order to which the complaint relates, to enable satisfactory resolution of the complaint."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "7. Please note that there could be risks in dealing with underage persons or people acting under false pretence."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "8. Fudr - Use of the Website\nYou agree, undertake and confirm that your use of Platform shall be strictly governed by the following binding principles:"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 55, right: 5, top: 15),
              child: Text(
                  "1. You shall not host, display, upload, download, modify, publish, transmit, update or share any information which:"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "1. belongs to another person and which you do not have any right to;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "2. is grossly harmful, harassing, blasphemous, defamatory, obscene, pornographic, paedophilic, libellous, slanderous, criminally inciting or invasive of another’s privacy, hateful, or racially, ethnically objectionable, disparaging, relating or encouraging money laundering or gambling, or otherwise unlawful in any manner whatsoever; or unlawfully threatening or unlawfully harassing including but not limited to “indecent representation of women” within the meaning of the Indecent Representation of Women (Prohibition) Act, 1986;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text("3. is misleading or misrepresentative in any way;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "4. is patently offensive to the online community, such as sexually explicit content, or content that promotes obscenity, paedophilia, racism, bigotry, hatred or physical harm of any kind against any group or individual;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "5. harasses or advocates harassment of another person;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "6. involves the transmission of “junk mail”, “chain letters”, or unsolicited mass mailing or “spamming”;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "7. promotes illegal activities or conduct that is abusive, threatening, obscene, defamatory or libellous;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "8. infringes upon or violates any third party’s rights [including, but not limited to, intellectual property rights, rights of privacy (including without limitation unauthorized disclosure of a person’s name, email address, physical address or phone number) or rights of publicity];"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "9. promotes an illegal or unauthorized copy of another person's copyrighted work (see “copyright complaint” below for instructions on how to lodge a complaint about uploaded copyrighted material), such as providing pirated computer programs or links to them, providing information to circumvent manufacture-installed copy-protect devices, or providing pirated music or links to pirated music files;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "10. contains restricted or password-only access pages, or hidden pages or images (those not linked to or from another accessible page);"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "11. provides material that exploits people in a sexual, violent or otherwise inappropriate manner or solicits personal information from anyone;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "12. provides instructional information about illegal activities such as making or buying illegal weapons, violating someone’s privacy, or providing or creating computer viruses;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "13. contains video, photographs, or images of another person (with a minor or an adult);"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "14. tries to gain unauthorized access or exceeds the scope of authorized access to the Platform or to profiles, blogs, communities, account information, bulletins, friend request, or other areas of the Platform or solicits passwords or personal identifying information for commercial or unlawful purposes from other users;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "15. engages in commercial activities and/or sales without our prior written consent such as contests, sweepstakes, barter, advertising and pyramid schemes, or the buying or selling of products related to the Platform. Throughout these Terms of Use, Fudr’s prior written consent means a communication coming from Fudr’s Legal Department, specifically in response to your request, and expressly addressing and allowing the activity or conduct for which you seek authorization;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "16. solicits gambling or engages in any gambling activity which is or could be construed as being illegal;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "17. interferes with another user’s use and enjoyment of the Platform or any third party’s user and enjoyment of similar services;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "18. refers to any website or URL that, in our sole discretion, contains material that is inappropriate for the Platform or any other website, contains content that would be prohibited or violates the letter or spirit of these Terms of Use;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, right: 25, top: 5),
              child: Text("19. harm minors in any way;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "20. infringes any patent, trademark, copyright or other intellectual property rights or third party’s trade secrets or rights of publicity or privacy or shall not be fraudulent or involve the sale of counterfeit or stolen products;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text("21. violates any law for the time being in force;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "22. deceives or misleads the addressee/users about the origin of such messages or communicates any information which is grossly offensive or menacing in nature;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 5, top: 5),
              child: Text("23. impersonate another person;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "24. contains software viruses or any other computer code, files or programs designed to interrupt, destroy or limit the functionality of any computer resource; or contains any trojan horses, worms, time bombs, cancelbots, easter eggs or other computer programming routines that may damage, detrimentally interfere with, diminish value of, surreptitiously intercept or expropriate any system, data or personal information;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "25. threatens the unity, integrity, defence, security or sovereignty of India, friendly relations with foreign states, or public order or causes incitement to the commission of any criminal offence or prevents investigation of any offence or is insulting any other nation;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 5, top: 5),
              child: Text("26. is false, inaccurate or misleading;"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "27. directly or indirectly, offers, attempts to offer, trades or attempts to trade in any item, the dealing of which is prohibited or restricted in any manner under the provisions of any applicable law, rule, regulation or guideline for the time being in force; or"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "28. creates liability for us or causes us to lose (in whole or in part) the services of our internet service provider or other suppliers."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "9. You shall not use any “deep-link”, “page-scrape”, “robot”, “spider” or other automatic device, program, algorithm or methodology, or any similar or equivalent manual process, to access, acquire, copy or monitor any portion of the Platform or any Content, or in any way reproduce or circumvent the navigational structure or presentation of the Platform or any Content, to obtain or attempt to obtain any materials, documents or information through any means not purposely made available through the Platform. We reserve our right to prohibit any such activity."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "10. You shall not attempt to gain unauthorized access to any portion or feature of the Platform, or any other systems or networks connected to the Platform or to any server, computer, network, or to any of the services offered on or through the Platform, by hacking, “password mining” or any other illegitimate means."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "11. You shall not probe, scan or test the vulnerability of the Platform or any network connected to the Platform nor breach the security or authentication measures on the Platform or any network connected to the Platform. You may not reverse look-up, trace or seek to trace any information on any other user of or visitor to Platform, or any other Buyer, including any account on the Platform not owned by you, to its source, or exploit the Platform or any service or information made available or offered by or through the Platform, in any way where the purpose is to reveal any information, including but not limited to personal identification or information, other than your own information, as provided for by the Platform."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "12. You shall not make any negative, denigrating or defamatory statement(s) or comment(s) about us or the brand name or domain name used by us including the name ‘Fudr’, or otherwise engage in any conduct or action that might tarnish the image or reputation, of Fudr or Merchant on platform or otherwise tarnish or dilute any Fudr’s trade or service marks, trade name and/or goodwill associated with such trade or service marks, as may be owned or used by us. You agree that you will not take any action that imposes an unreasonable or disproportionately large load on the infrastructure of the Platform or Fudr’s systems or networks, or any systems or networks connected to Fudr."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "13. You agree not to use any device, software or routine to interfere or attempt to interfere with the proper working of the Platform or any transaction being conducted on the Platform, or with any other person’s use of the Platform."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "14. You may not forge headers or otherwise manipulate identifiers in order to disguise the origin of any message or transmittal you send to us on or through the Platform or any service offered on or through the Platform. You may not pretend that you are, or that you represent, someone else, or impersonate any other individual or entity."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "15. You may not use the Platform or any content on the Platform for any purpose that is unlawful or prohibited by these Terms of Use, or to solicit the performance of any illegal activity or other activity that infringes the rights of Fudr and/or others."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "16. You shall at all times ensure full compliance with the applicable provisions, as amended from time to time, of (a) the Information Technology Act, 2000 and the rules thereunder; (b) all applicable domestic laws, rules and regulations (including the provisions of any applicable exchange control laws or regulations in force); and (c) international laws, foreign exchange laws, statutes, ordinances and regulations (including, but not limited to sales tax/VAT, income tax, octroi, service tax, central excise, custom duty, local levies) regarding your use of our service and your listing, purchase, solicitation of offers to purchase, and sale of products or services. You shall not engage in any transaction in an item or service, which is prohibited by the provisions of any applicable law including exchange control laws or regulations for the time being in force."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "17. In order to allow us to use the information supplied by you, without violating your rights or any laws, you agree to grant us a non-exclusive, worldwide, perpetual, irrevocable, royalty-free, sub-licensable (through multiple tiers) right to exercise the copyright, publicity, database rights or any other rights you have in your Information, in any media now known or not currently known, with respect to your Information. We will only use your information in accordance with these Terms of Use and Privacy Policy applicable to use of the Platform."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "18. From time to time, you shall be responsible for providing information relating to the products or services proposed to be sold by you. In this connection, you undertake that all such information shall be accurate in all respects. You shall not exaggerate or overemphasize the attributes of such products or services so as to mislead other users in any manner."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "19. You shall not engage in advertising to, or solicitation of, other users of the Platform to buy or sell any products or services, including, but not limited to, products or services related to that being displayed on the Platform or related to us. You may not transmit any chain letters or unsolicited commercial or junk email to other users via the Platform. It shall be a violation of these Terms of Use to use any information obtained from the Platform in order to harass, abuse, or harm another person, or in order to contact, advertise to, solicit, or sell to another person other than us without our prior explicit consent. In order to protect our users from such advertising or solicitation, we reserve the right to restrict the number of messages or emails which a user may send to other users in any 24-hour period which we deem appropriate in its sole discretion. You understand that we have the right at all times to disclose any information (including the identity of the persons providing information or materials on the Platform) as necessary to satisfy any law, regulation or valid governmental request. This may include, without limitation, disclosure of the information in connection with investigation of alleged illegal activity or solicitation of illegal activity or in response to a lawful court order or subpoena. In addition, We can (and you hereby expressly authorize us to) disclose any information about you to law enforcement or other government officials, as we, in our sole discretion, believe necessary or appropriate in connection with the investigation and/or resolution of possible crimes, especially those that may involve personal injury."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "20. We reserve the right, but has no obligation, to monitor the materials posted on the Platform. Fudr shall have the right to remove or edit any content that in its sole discretion violates, or is alleged to violate, any applicable law or either the spirit or letter of these Terms of Use. Notwithstanding this right, YOU REMAIN SOLELY RESPONSIBLE FOR THE CONTENT OF THE MATERIALS YOU POST ON THE PLATFORM. Please be advised that such Content posted does not necessarily reflect Fudr views. In no event shall Fudr assume or have any responsibility or liability for any Content posted or for any claims, damages or losses resulting from use of Content and/or appearance of Content on the Platform. You hereby represent and warrant that you have all necessary rights in and to all Content which you provide and all information it contains and that such Content shall not infringe any proprietary or other rights of third parties or contain any libellous, tortious, or otherwise unlawful information."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "21. Your correspondence or business dealings with, or participation in promotions of, advertisers found on or through the Platform, including payment and delivery of related products or services, and any other terms, conditions, warranties or representations associated with such dealings, are solely between you and such advertiser. We shall not be responsible or liable for any loss or damage of any sort incurred as the result of any such dealings or as the result of the presence of such advertisers on the Platform."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "22. It is possible that other users (including unauthorized users or ‘hackers’) may post or transmit offensive or obscene materials on the Platform and that you may be involuntarily exposed to such offensive and obscene materials. It also is possible for others to obtain personal information about you due to your use of the Platform, and that the recipient may use such information to harass or injure you. We do not approve of such unauthorized uses, but by using the Platform You acknowledge and agree that we are not responsible for the use of any personal information that you publicly disclose or share with others on the Platform. Please carefully select the type of information that you publicly disclose or share with others on the Platform."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5, top: 5),
              child: Text(
                  "23. Fudr shall have all the rights to take necessary action and claim damages that may occur due to your involvement/participation in any way on your own or through group/s of people, intentionally or unintentionally in DoS/DDoS (Distributed Denial of Services), hacking, pen testing attempts without our prior consent or a mutual legal agreement."),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    '6.Account Registration or use\n   of the Platform',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5),
              child: Text(
                  "1. You may access the Platform by registering to create an account (“ Fudr Account”) and become a member (“ Membership”); or (c) you can also register to join by logging into your account with certain third party social networking sites (“ SNS”) (including, but not limited to, Facebook); each such account, a “ Third Party Account”, via our Platform, as described below. The Membership is limited for the purpose and are subject to the terms, and strictly not transferable. As part of the functionality of the Platform services, you may link your Fudr Account with Third Party Accounts, by either:"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "1. providing your Third Party Account login information to us through the Platform; or"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 5, top: 5),
              child: Text(
                  "2. allowing us to access your Third Party Account, as is permitted under the applicable terms and conditions that govern your use of each Third Party Account."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5),
              child: Text(
                  "2. You represent that you are entitled to disclose your Third Party Account login information to us and/or grant us access to your Third Party Account (including, but not limited to, for use for the purposes described herein), without breach by you of any of the terms and conditions that govern your use of the applicable Third Party Account and without obligating us to pay any fees or making us subject to any usage limitations imposed by such third party service providers."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5),
              child: Text(
                  "3. By granting us access to any Third Party Accounts, you understand that we will access, make available and store (if applicable) any content or information that you have provided to and stored in your Third Party Account (“ SNS Content”) so that it is available on and through the Platform via your Fudr Account."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5),
              child: Text(
                  "4. Unless otherwise specified in these Terms of Use, all SNS Content, if any, will be considered to be your content for all purposes of these Terms of Use."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5),
              child: Text(
                  "5. Depending on the Third Party Accounts, you choose, and subject to the privacy settings that you have set in such Third Party Accounts, personally identifiable information that you post to your Third Party Accounts will be available on and through your Fudr Account on the Platform."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5),
              child: Text(
                  "6. Please note that if a Third Party Account or associated service becomes unavailable or our access to such Third Party Account is terminated by the third party service provider, then SNS Content will no longer be available on and through the Platform."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5),
              child: Text(
                  "7. We will create your Fudr Account for your use of the Platform services based upon the personal information you provide to us or that we obtain via an SNS, as described above. You may only have one Fudr Account and not permitted to create multiple accounts. If found, you having multiple accounts, Fudr reserves right to suspend such multiple account without being liable for any compensation."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5),
              child: Text(
                  "8. You agree to provide accurate, current and complete information during the registration process and to update such information to keep it accurate, current and complete."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5),
              child: Text(
                  "9. We reserve the right to suspend or terminate your Fudr Account and your access to the Services (i) if any information provided during the registration process or thereafter proves to be inaccurate, not current or incomplete; (ii) if it is believed that your actions may cause legal liability for you, other users or us; and/or (iii) if you are found to be non- compliant with the Terms of Use."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5),
              child: Text(
                  "10. You are responsible for safeguarding your password. You agree that you will not disclose your password to any third party and that you will take sole responsibility for any activities or actions under your Fudr Account, whether or not you have authorized such activities or actions. You will immediately notify us of any unauthorized use of your Fudr Account."),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5),
              child: Text(
                  "11. Goods and services purchased from the Platform are intended for your personal use and you represent that the same are not for resale or you are not acting as an agent for other parties."),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    '7.Bookings and Financial Terms',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 5),
              child: Text(
                  "1. The Platform allows you to place food order bookings and we will, subject to the terms and conditions set out herein, notify the participant restaurant/merchant of such order."),
            ),
          ],
        ),
      ),
    );
  }
}
