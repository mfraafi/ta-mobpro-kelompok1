import 'dart:io';

import 'package:addpage/homepage.dart';
import 'package:addpage/page_header.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class tambah extends StatefulWidget {
  tambah({Key? key}) : super(key: key);

  @override
  State<tambah> createState() => _tambahState();
}

class _tambahState extends State<tambah> {
  File? _imageFile;
  final _picker = ImagePicker();

  static const menuItems = <String>[
    'Carry',
    'Nuker',
    'Initiator',
    'Disabler',
    'Durable',
    'Escape',
    'Support',
    'Pusher',
    'Jungler',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();
  final List<PopupMenuItem<String>> _popUpMenuItems = menuItems
      .map(
        (String value) => PopupMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();
  String? _btn2SelectedVal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: PageHeader(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
          children: [
            // Nama Hero
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Hero Name',
                  labelText: 'Hero Name'),
            ),
            SizedBox(height: 24.0),
            // Deskripsi Hero
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Story of the hero',
                helperText: 'Keep it short, this is just a demo.',
                labelText: 'Description',
              ),
              maxLines: 3,
            ),
            SizedBox(height: 24.0),
            // Ambil Gambar
            ButtonBar(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.photo),
                  onPressed: () async => _pickImageFromGallery(),
                  tooltip: 'Pick from gallery',
                ),
              ],
            ),

            // Role
            ListTile(
              title: const Text('Role:'),
              trailing: DropdownButton(
                value: _btn2SelectedVal,
                hint: const Text('Choose'),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() => _btn2SelectedVal = newValue);
                  }
                },
                items: _dropDownMenuItems,
              ),
            ),

            if (this._imageFile == null)
              const Placeholder()
            else
              Image.file(this._imageFile!),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() => this._imageFile = File(pickedFile.path));
    }
  }
}
