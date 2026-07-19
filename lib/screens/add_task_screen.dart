import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../models/task.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _formKey = GlobalKey<FormState>();

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  String selectedCategory = "Study";
  String selectedPriority = "Medium";

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  void saveTask() {
  if (_formKey.currentState!.validate()) {
    final task = Task(
      title: titleController.text,
      description: descriptionController.text,
      category: selectedCategory,
      priority: selectedPriority,
      dueDate: DateTime.now(),
    );

    Navigator.pop(context, task);
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        title: const Text("Add Task"),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Form(
            key: _formKey,

            child: Column(
              children: [

                CustomTextField(
                  controller: titleController,
                  hintText: "Task Title",
                  prefixIcon: Icons.task_alt,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter task title";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                CustomTextField(
                  controller: descriptionController,
                  hintText: "Description",
                  prefixIcon: Icons.description_outlined,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter description";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                DropdownButtonFormField<String>(
                    initialValue: selectedCategory,
                  decoration: const InputDecoration(
                    labelText: "Category",
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: "Study",
                      child: Text("Study"),
                    ),
                    DropdownMenuItem(
                      value: "Work",
                      child: Text("Work"),
                    ),
                    DropdownMenuItem(
                      value: "Personal",
                      child: Text("Personal"),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedCategory = value!;
                    });
                  },
                ),

                const SizedBox(height: 20),

                DropdownButtonFormField<String>(
                    initialValue: selectedPriority,
                  decoration: const InputDecoration(
                    labelText: "Priority",
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: "High",
                      child: Text("High"),
                    ),
                    DropdownMenuItem(
                      value: "Medium",
                      child: Text("Medium"),
                    ),
                    DropdownMenuItem(
                      value: "Low",
                      child: Text("Low"),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedPriority = value!;
                    });
                  },
                ),

                const SizedBox(height: 35),

                CustomButton(
                  text: "Save Task",
                  icon: Icons.save,
                  onPressed: saveTask,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}