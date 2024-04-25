import 'package:flutter/material.dart';
import 'package:twinned_template/widget/label_textfield.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _webController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const vDivider = SizedBox(height: 8);
    const hDivider = SizedBox(width: 8);

    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: const Center(
              child: Text(
                'Your Banner Image',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          vDivider,
          vDivider,
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(140, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  hDivider,
                ],
              ),
              vDivider,
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  children: [
                    hDivider,
                    Expanded(
                      child: LabelTextField(
                        readOnlyVal: true,
                        controller: _emailController,
                        label: 'Email',
                      ),
                    ),
                    hDivider,
                    Expanded(
                      child: LabelTextField(
                        label: 'Name',
                        controller: _nameController,
                      ),
                    ),
                    hDivider,
                  ],
                ),
              ),
              vDivider,
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  children: [
                    hDivider,
                    Expanded(
                      child: LabelTextField(
                        label: 'Address',
                        controller: _addressController,
                      ),
                    ),
                    hDivider,
                    Expanded(
                      child: LabelTextField(
                        keyboardType: TextInputType.phone,
                        label: 'Phone',
                        controller: _phoneController,
                      ),
                    ),
                    hDivider,
                  ],
                ),
              ),
              vDivider,
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  children: [
                    Row(
                      children: [
                        hDivider,
                        Expanded(
                          child: LabelTextField(
                            label: 'Website',
                            controller: _webController,
                          ),
                        ),
                        hDivider,
                        Expanded(
                          child: LabelTextField(
                            label: 'Description',
                            controller: _descController,
                          ),
                        ),
                        hDivider
                      ],
                    ),
                    vDivider,
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
