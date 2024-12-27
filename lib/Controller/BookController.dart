import 'dart:io';

import 'package:bookstore_app/Config/Message.dart';
import 'package:bookstore_app/Models/bookModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class BookController extends GetxController {
  TextEditingController title = TextEditingController();
  TextEditingController author = TextEditingController();
  TextEditingController aboutAuth = TextEditingController();
  TextEditingController des = TextEditingController();
  TextEditingController language = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController pages = TextEditingController();
  TextEditingController audioLen = TextEditingController();
  // Rename the instance variable to avoid conflict
  ImagePicker imagePicker = ImagePicker();
  // storage mai hum books ki detail dalaengay
  final storage = FirebaseStorage.instance;
  // aur yahan hum book ki details
  final db = FirebaseFirestore.instance;
  RxString imageUrl = "".obs;
  RxString pdfUrl = "".obs;
  // agar image upload hojaye tou usko show karwane ke liye
  RxBool isImageUploading = false.obs;
  int index = 0;
  // yahan per file banayengay takay hum apni image ko gallery se pick karen
  void pickImage() async {
    isImageUploading.value = true;
    final XFile? image =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      print(image.path);
      uploadImageTOForebase(File(image.path));
      isImageUploading.value = false;
    }
  }

  // yahan debug ke time per path nahi lag raha hai
  void uploadImageTOForebase(File image) async {
    var uuid = Uuid();
    var filename = uuid.v1();
    var storageRef = storage.ref().child("images/$filename");
    var response = await storageRef.putFile(image);
    String downloadUrl = await storageRef.getDownloadURL();
    imageUrl.value = downloadUrl;
    print("Download URL: $downloadUrl");
  }

  // yahan se hum book ko database mai add kar rahe hain
  void createbook() async {
    var newBook = BookModel(
        id: "$index",
        title: title.text,
        description: des.text,
        author: author.text,
        aboutAuthor: aboutAuth.text,
        language: language.text,
        price: int.parse(price.text),
        pages: int.parse(pages.text),
        audioLen: audioLen.text,
        coverUrl: imageUrl.value,
        audiourl: pdfUrl.value);

    await db.collection("books").add(newBook.toJson());
    successMessage("Book Added to the database");
  }
}
