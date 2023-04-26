import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:invoice_app/models/invoice_models.dart';

class InvoiceDetailsPage extends StatefulWidget {
  const InvoiceDetailsPage({Key? key}) : super(key: key);

  @override
  _InvoiceDetailsPageState createState() => _InvoiceDetailsPageState();
}

class _InvoiceDetailsPageState extends State<InvoiceDetailsPage> {
  final GlobalKey<FormState> invoiceDetailsFormKey = GlobalKey<FormState>();

  final TextEditingController businessNameController = TextEditingController();
  final TextEditingController businessEmailController =
      TextEditingController();
  final TextEditingController businessAddressController =
      TextEditingController();
  final TextEditingController businessCountryController =
      TextEditingController();

  final TextEditingController clientNameController = TextEditingController();
  final TextEditingController clientEmailController = TextEditingController();
  final TextEditingController clientAddressController =
      TextEditingController();
  final TextEditingController clientCountryController =
      TextEditingController();

  final TextEditingController invoiceNumberController =
      TextEditingController();
  final TextEditingController dateOfIssueController = TextEditingController();
  final TextEditingController dueDateController = TextEditingController();
  final TextEditingController currencyController = TextEditingController();
  final TextEditingController taxTypeController = TextEditingController();
  final TextEditingController taxRateController = TextEditingController();

  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productDescriptionController =
      TextEditingController();
  final TextEditingController productPriceController = TextEditingController();
  final TextEditingController productQuantityController =
      TextEditingController();
  final TextEditingController productDiscountController =
      TextEditingController();
  final TextEditingController productLineTotalController =
      TextEditingController();

  final ImagePicker _picker = ImagePicker();
  File? image;

  String? businessName;
  String? businessEmail;
  String? businessAddress;
  String? businessCountry;

  String? clientName;
  String? clientEmail;
  String? clientAddress;
  String? clientCountry;

  String? invoiceNumber;
  String? dateOfIssue;
  String? dueDate;
  String? currency;
  String? taxType;
  String taxRate = '0';

  String? productName;
  String? productDescription;
  String productPrice = '0';
  String productQuantity = '0';
  String productDiscount = '0';
  String productLineTotal = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 40, right: 40),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                color: Colors.blueGrey.shade100,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 15, right: 15),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                color: Colors.blueGrey.shade200,
              ),
            ),
          ),

          //00416A
          Padding(
            padding: const EdgeInsets.only(top: 55),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(27),
                  topLeft: Radius.circular(27),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/', (route) => false);
                            },
                            icon: const Icon(Icons.arrow_back_ios_rounded),
                          ),
                          Text(
                            'Invoice Details',
                            style: TextStyle(
                              fontFamily: "maulik",
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 23,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('pdfPage');
                            },
                            icon: const Icon(Icons.apps),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Form(
                        key: invoiceDetailsFormKey,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5),
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 50),
                                Text(
                                  "1). Your Business Info",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                    onTap: () async {
                                      XFile? xfile = await _picker.pickImage(
                                          source: ImageSource.gallery);
                                      String path = xfile!.path;
                                      File file = File(path);
                                      setState(() {
                                        image = file;
                                        invoice.image = image!;
                                      });
                                    },
                                    child: CircleAvatar(
                                      radius: 60,
                                      backgroundColor: lColor,
                                      backgroundImage: (image != null)
                                          ? FileImage(image!)
                                          : null,
                                      child: (image != null)
                                          ? Container()
                                          : Text(
                                              'Add your logo',
                                              style: TextStyle(color: dColor),
                                            ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Files must be less than 2MB.\nAccepted file formats include JPG and PNG.',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                textFormFields(
                                  controller: businessNameController,
                                  hintText: 'Business name or website',
                                  onSaved: (val) {
                                    businessName = val;
                                  },
                                  textInputType: TextInputType.name,
                                ),
                                const SizedBox(height: 20),
                                textFormFields(
                                  controller: businessEmailController,
                                  hintText: 'Busine ss email',
                                  onSaved: (val) {
                                    businessEmail = val;
                                  },
                                  textInputType: TextInputType.emailAddress,
                                ),
                                const SizedBox(height: 20),
                                textFormFields(
                                  controller: businessAddressController,
                                  hintText: 'Business address',
                                  onSaved: (val) {
                                    businessAddress = val;
                                  },
                                  textInputType: TextInputType.multiline,
                                ),
                                const SizedBox(height: 20),
                                textFormFields(
                                  controller: businessCountryController,
                                  hintText: 'Country',
                                  onSaved: (val) {
                                    businessCountry = val;
                                  },
                                  textInputType: TextInputType.text,
                                ),
                                const SizedBox(height: 40),
                                Text(
                                  "2). Client Info",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                textFormFields(
                                  controller: clientNameController,
                                  hintText: "Client's name",
                                  onSaved: (val) {
                                    clientName = val;
                                  },
                                  textInputType: TextInputType.name,
                                ),
                                const SizedBox(height: 20),
                                textFormFields(
                                  controller: clientEmailController,
                                  hintText: "Client's email",
                                  onSaved: (val) {
                                    clientEmail = val;
                                  },
                                  textInputType: TextInputType.emailAddress,
                                ),
                                const SizedBox(height: 20),
                                textFormFields(
                                  controller: clientAddressController,
                                  hintText: "Client's address",
                                  onSaved: (val) {
                                    clientAddress = val;
                                  },
                                  textInputType: TextInputType.multiline,
                                ),
                                const SizedBox(height: 20),
                                textFormFields(
                                  controller: clientCountryController,
                                  hintText: 'Country',
                                  onSaved: (val) {
                                    clientCountry = val;
                                  },
                                  textInputType: TextInputType.text,
                                ),
                                const SizedBox(height: 40),
                                Text(
                                  "3). Invoice Settings",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Details',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                textFormFields(
                                  controller: invoiceNumberController,
                                  hintText: "Invoice Number",
                                  onSaved: (val) {
                                    invoiceNumber = val;
                                  },
                                  textInputType: TextInputType.text,
                                ),
                                const SizedBox(height: 20),
                                textFormFields(
                                  controller: dateOfIssueController,
                                  hintText: "Date of Issue",
                                  onSaved: (val) {
                                    dateOfIssue = val;
                                  },
                                  textInputType: TextInputType.datetime,
                                ),
                                const SizedBox(height: 20),
                                textFormFields(
                                  controller: dueDateController,
                                  hintText: "Due Date",
                                  onSaved: (val) {
                                    dueDate = val;
                                  },
                                  textInputType: TextInputType.datetime,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Payment',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 17),
                                textFormFields(
                                  controller: currencyController,
                                  hintText: 'Currency',
                                  onSaved: (val) {
                                    currency = val;
                                  },
                                  textInputType: TextInputType.text,
                                ),
                                const SizedBox(height: 20),
                                textFormFields(
                                  controller: taxTypeController,
                                  hintText: 'Tax Type',
                                  onSaved: (val) {
                                    taxType = val;
                                  },
                                  textInputType: TextInputType.text,
                                ),
                                const SizedBox(height: 20),
                                textFormFields(
                                  controller: taxRateController,
                                  hintText: 'Tax Rate %',
                                  onSaved: (val) {
                                    taxRate = val;
                                  },
                                  textInputType: TextInputType.number,
                                ),
                                const SizedBox(height: 40),
                                Text(
                                  "4). Billing Items",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color:
                                        Colors.grey.shade200.withOpacity(0.5),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Your Product or Service',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      textFormFields(
                                        controller: productNameController,
                                        textInputType: TextInputType.name,
                                        hintText: 'Product Name',
                                        onSaved: (val) {
                                          productName = val;
                                        },
                                      ),
                                      const SizedBox(height: 15),
                                      const Text(
                                        'Description',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      textFormFields(
                                        controller:
                                            productDescriptionController,
                                        hintText:
                                            "Describe the product or service",
                                        textInputType: TextInputType.multiline,
                                        onSaved: (val) {
                                          productDescription = val;
                                        },
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Price',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              SizedBox(
                                                width: 150,
                                                child: textFormFields(
                                                  controller:
                                                      productPriceController,
                                                  hintText: "\$0.00",
                                                  textInputType:
                                                      TextInputType.number,
                                                  onSaved: (val) {
                                                    productPrice = val;
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Quantity',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              SizedBox(
                                                width: 150,
                                                child: textFormFields(
                                                  controller:
                                                      productQuantityController,
                                                  hintText: "0",
                                                  textInputType:
                                                      TextInputType.number,
                                                  onSaved: (val) {
                                                    productQuantity = val;
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Discount',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              SizedBox(
                                                width: 150,
                                                child: textFormFields(
                                                  controller:
                                                      productDiscountController,
                                                  hintText: "0",
                                                  textInputType:
                                                      TextInputType.number,
                                                  onSaved: (val) {
                                                    productDiscount = val;
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const SizedBox(height: 70),
                                Align(
                                  alignment: const Alignment(0, 0),
                                  child: FloatingActionButton.extended(
                                    onPressed: () {
                                      if (invoiceDetailsFormKey.currentState!
                                          .validate()) {
                                        invoiceDetailsFormKey.currentState!
                                            .save();

                                        invoice.businessName = businessName;
                                        invoice.businessEmail = businessEmail;
                                        invoice.businessAddress =
                                            businessAddress;
                                        invoice.businessCountry =
                                            businessCountry;

                                        invoice.clientName = clientName;
                                        invoice.clientEmail = clientEmail;
                                        invoice.clientAddress = clientAddress;
                                        invoice.clientCountry = clientCountry;

                                        invoice.invoiceNumber = invoiceNumber;
                                        invoice.dateOfIssue = dateOfIssue;
                                        invoice.dueDate = dueDate;
                                        invoice.currency = currency;
                                        invoice.taxType = taxType;
                                        invoice.taxRate = double.parse(taxRate);

                                        invoice.productName = productName;
                                        invoice.productDescription =
                                            productDescription;
                                        invoice.productPrice =
                                            double.parse(productPrice);
                                        invoice.productQuantity =
                                            double.parse(productQuantity);
                                        invoice.productDiscount =
                                            double.parse(productDiscount);

                                        invoice.productLineTotal =
                                            (invoice.productPrice *
                                                invoice.productQuantity);

                                        invoice.discount =
                                            (invoice.productPrice *
                                                    (invoice.productDiscount /
                                                        100)) *
                                                (invoice.productQuantity);

                                        invoice.subTotal =
                                            invoice.productLineTotal;
                                        invoice.tax = (invoice.productPrice *
                                                (invoice.taxRate! / 100)) *
                                            (invoice.productQuantity);
                                        invoice.balance = (invoice.subTotal -
                                                invoice.discount) +
                                            invoice.tax;

                                        print(invoice.businessName);

                                        final snackBar = SnackBar(
                                          content: const Text(
                                              'Your Details Saved Successfully...'),
                                          backgroundColor: dColor,
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      }
                                    },
                                    icon: const Icon(Icons.save),
                                    label: const Text("SAVE"),
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                                Container(
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget textFormFields({controller, hintText, onSaved, textInputType}) {
    return TextFormField(
      controller: controller,
      validator: (val) {
        if (val!.isEmpty) {
          return "Enter your $hintText first";
        }
        return null;
      },
      onSaved: onSaved,
      keyboardType: textInputType,
      maxLines: null,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: dColor,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: lColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
