import 'package:bookstore_app/Controller/PdfController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    PdfController pdfController = Get.put(PdfController());
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color.fromARGB(244, 255, 253, 253),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          "Book Page",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SfPdfViewer.network(
        'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
        key: pdfController.pdfViewerKey,
      ),
    );
  }
}


// yahan issue hain video 2:49:52 per issue hai dekhna hoga