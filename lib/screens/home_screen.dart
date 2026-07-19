import 'package:flutter/material.dart';

import '../models/task.dart';
import '../theme/app_colors.dart';
import '../utils/constants.dart';
import '../widgets/progress_card.dart';
import '../widgets/task_card.dart';
import '../widgets/quick_action_card.dart';
import 'add_task_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatefulWidget {
  final String name;
  final String email;
  final String phone;

  const HomeScreen({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
  });


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  final List<Task> tasks = [
    Task(
      title: "Flutter UI Assignment",
      description: "Complete internship UI task",
      category: "Study",
      priority: "High",
      dueDate: DateTime.now(),
    ),
    Task(
      title: "Database Record",
      description: "Finish SQL constraints",
      category: "Work",
      priority: "Medium",
      dueDate: DateTime.now().add(const Duration(days: 1)),
    ),
    Task(
      title: "Read NPTEL Notes",
      description: "Revise Module 2",
      category: "Study",
      priority: "Low",
      dueDate: DateTime.now().add(const Duration(days: 2)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final completed = tasks.where((e) => e.isCompleted).length;
    final pending = tasks.length - completed;

    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        title: const Text(AppConstants.appName),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SettingsScreen(),
                ),
              );
            },
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
  backgroundColor: AppColors.primary,
  child: const Icon(Icons.add),
  onPressed: () async {
    final Task? task = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const AddTaskScreen(),
      ),
    );

    if (task != null) {
      setState(() {
        tasks.add(task);
      });
    }
  },
),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                "Hello 👋",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                "Stay productive today!",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 20),

              ProgressCard(
                completedTasks: completed,
                pendingTasks: pending,
              ),

              const SizedBox(height: 25),

              TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search tasks...",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "Quick Actions",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  QuickActionCard(
  icon: Icons.add_task,
  title: "Add Task",
  onTap: () async {
    final Task? task = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const AddTaskScreen(),
      ),
    );

    if (task != null) {
      setState(() {
        tasks.add(task);
      });
    }
  },
),
                  QuickActionCard(
                    icon: Icons.person,
                    title: "Profile",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                         builder: (_) => ProfileScreen(
  name: widget.name,
  email: widget.email,
  phone: widget.phone,
),
                        ),
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 25),

              const Text(
                "Today's Tasks",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

             Expanded(
  child: ListView.builder(
    itemCount: tasks.length,
    itemBuilder: (context, index) {
      return TaskCard(
        task: tasks[index],

        onToggle: () {
          setState(() {
            tasks[index].toggleCompletion();
          });
        },


                      onDelete: () {
                        setState(() {
                          tasks.removeAt(index);
                        });
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,

        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ProfileScreen(
  name: widget.name,
  email: widget.email,
  phone: widget.phone,
),
              ),
            );
          }
        },

        selectedItemColor: AppColors.primary,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}