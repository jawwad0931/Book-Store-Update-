import 'package:bookstore_app/Components/MultilineTextFormField.dart';
import 'package:bookstore_app/Components/Myformfield.dart';
import 'package:flutter/material.dart';

class AddNewBook extends StatelessWidget {
  const AddNewBook({super.key});

  @override
  Widget build(BuildContext context) {
    // yeh maine temperary banaya hua hai form ke liye
    TextEditingController controller = TextEditingController();
    return Scaffold(
      // AppBar call ho raha hai as a component
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Add New Book"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Section  
            Container(
              height: 250,
              padding: const EdgeInsets.all(20),
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        // User Profile Image
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          height: 100,
                          width: 100,
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Add Book Name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            // Add TextField
            Padding(
              padding: const EdgeInsets.all(8.0),
              // yahan hum formfields ko call kar rahe hain
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                                            padding: EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Theme.of(context).colorScheme.primary,
                                          ),
                                            child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.upload_sharp,color:Theme.of(context).colorScheme.background),
                          SizedBox(width: 8,),
                          Text("Book PDF", style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.background,
                          ),
                          )
                        ],
                                            ),
                                          ),
                      ),
                      const SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.audio_file,color:Theme.of(context).colorScheme.background),
                          SizedBox(width: 8,),
                          Text("Book Audio", style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.background,
                          ),
                          )
                        ],
                      ),
                    ),
                  ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  MyFormField(
                    controller: controller,
                    hintText: "Enter Book Name",
                    icon: Icons.book,
                  ),
                  const SizedBox(height: 10),
                  MyFormField(
                    controller: controller,
                    hintText: "Author Name",
                    icon: Icons.person,
                  ),
                  const SizedBox(height: 10),
                  MultilineTextField(
                    controller: controller,
                    hintText: "Book Description",
                  ),
                  const SizedBox(height: 10),
                  MyFormField(
                    controller: controller,
                    hintText: "About Author",
                    icon: Icons.person,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // yahan maine row banaya hua hai isliye ke mujhe dou text field aik row mai rakhna tha
                  Row(children: [
                    Expanded(
                        child: MyFormField(
                      controller: controller,
                      hintText: "Price",
                      icon: Icons.currency_lira,
                    )),
                    const SizedBox(width: 10),
                    Expanded(
                        child: MyFormField(
                      controller: controller,
                      hintText: "Pages",
                      icon: Icons.pageview_outlined,
                    ))
                  ]),
                  // yahan maine row banaya hua hai isliye ke mujhe dou text field aik row mai rakhna tha
                  const SizedBox(height: 10),
                  Row(children: [
                    Expanded(
                        child: MyFormField(
                      controller: controller,
                      hintText: "Language",
                      icon: Icons.language,
                    )),
                    const SizedBox(width: 10),
                    Expanded(
                        child: MyFormField(
                      controller: controller,
                      hintText: "Audio Len",
                      icon: Icons.audio_file_outlined,
                    ))
                  ]
                  ),
                  // ======================================================
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                        Expanded(
                          child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.primary,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.cancel,color:Theme.of(context).colorScheme.background),
                              SizedBox(width: 8,), 
                              Text("Cancel", style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.background,
                            ),
                            )
                            ],
                          ),
                                                ),
                        ),
                        const SizedBox(width: 8,),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.primary,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.post_add,color:Theme.of(context).colorScheme.background),
                              SizedBox(width: 8,), 
                              Text("Post", style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.background,
                            ),
                            )
                            ],
                          ),
                        ),
                      ) 
                      // ===========================================
                    ],
                  )
                ],
                // ========================================================
                
              ),
            ),
          ],
          
        ),


        
      ),
    );
  }
}

// yahan per mujhe material app ki need thi isliye maine alag se statless widget banaya hua hai aur yahan maine call kiya hai bookwala txt field
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add New Book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AddNewBook(),
    );
  }
}
