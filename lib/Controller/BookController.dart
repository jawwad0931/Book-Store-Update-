import 'dart:io';
import 'dart:typed_data';

import 'package:bookstore_app/Config/Message.dart';
import 'package:bookstore_app/Models/bookModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  // yahan hum user ki detail ke liye instance bana rahe hain
  final Fauth = FirebaseAuth.instance;
  RxString imageUrl = "".obs;
  RxString pdfUrl = "".obs;
  // agar image upload hojaye tou usko show karwane ke liye
  RxBool isImageUploading = false.obs;
  // yeh pdf ka hai
  RxBool isPdfUploading = false.obs;
  // yeh post ki loading ke liye hai
  RxBool isPostLoading = false.obs;
  // yahan hum book data ki listing kar rahe hain
  var bookData = RxList<BookModel>();
  // aik aur current user list hai jo ke database se aa rahi hai
  var currentUserBook = RxList<BookModel>();
  int index = 0;
  // yahan per file banayengay takay hum apni image ko gallery se pick karen

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllBooks();
    getUserBook();
  }

  // yahan user ki detail ka collection ban raha hai
  void getAllBooks() async {
    bookData.clear();
    successMessage("Books Get Fun");
    var books = await db.collection("Books").get();
    for (var book in books.docs) {
      bookData.add(BookModel.fromJson(book.data()));
    }
  }

  void getUserBook() async {
    currentUserBook.clear();
    var books = await db
        .collection("userBook")
        .doc(Fauth.currentUser!.uid)
        .collection("book")
        .get();
    for (var book in books.docs) {
      currentUserBook.add(BookModel.fromJson(book.data()));
    }
  }

  void pickImage() async {
    isImageUploading.value = true;
    final XFile? image =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      print(image.path);
      uploadImageTOFirebase(File(image.path));
      isImageUploading.value = false;
    }
  }

  // yahan debug ke time per path nahi lag raha hai
  void uploadImageTOFirebase(File image) async {
    var uuid = Uuid();
    var filename = uuid.v1();
    var storageRef = storage.ref().child("images/$filename");
    var response = await storageRef.putFile(image);
    String downloadUrl = await storageRef.getDownloadURL();
    imageUrl.value = downloadUrl;
    print("Download URL: $downloadUrl");
    isImageUploading.value = false;
  }

  // yahan se hum book ko database mai add kar rahe hain
  void createbook() async {
    isPostLoading.value = true;
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
        coverUrl: "",
        audiourl: "",
        rating: "");

    await db.collection("books").add(newBook.toJson());
    // yahan hum new collection ko call kar rahe hai jisme user ki details hogi
    addBookInUserDb(newBook);
    isPostLoading.value = false;
    // yahan per sab ko clear kiya jaa raha hao
    title.clear();
    author.clear();
    des.clear();
    aboutAuth.clear();
    language.clear();
    price.clear();
    pages.clear();
    audioLen.clear();
    imageUrl.value = "";
    pdfUrl.value = "";
    // yahan hum success message show kar rahe hai
    getAllBooks();
    successMessage("Book Added to the database");
  }

// =======================PDF wala kaam yahan se shuru hua============================
  void pickPdf() async {
    isPdfUploading.value = true;
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      File file = File(result.files.first.path!);

      if (file.existsSync()) {
        Uint8List fileBytes = await file.readAsBytes();
        String fileName = result.files.first.name;
        print("file Bytes: $fileBytes");

        final response =
            await storage.ref().child("pdf/$fileName").putData(fileBytes);

        print(response.storage.bucket);

        final downloadURL = await response.ref.getDownloadURL();
        pdfUrl.value = downloadURL;
        print("Download URL");
      } else {
        print("File does not exist");
      }
    } else {
      print("NO file selected");
    }
    isPdfUploading.value = false;
  }

  void addBookInUserDb(BookModel book) async {
    await db.collection("userBook").doc().collection("book").add(book.toJson());
  }
}
