import 'package:flutter/material.dart';
import 'package:portfolio/app/core/responsive/responsive.dart';
import 'package:portfolio/app/modules/home/widgets/about_section.dart';
import 'package:portfolio/app/modules/home/widgets/contact_section.dart';
import 'package:portfolio/app/modules/home/widgets/project_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final scrollController = ScrollController();

  final aboutKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'My Portfolio',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 2,
        actions: ResponsiveLayout.isDesktop(context)
            ? [
                TextButton(
                  onPressed: () => scrollTo(aboutKey),
                  child: const Text(
                    'About',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () => scrollTo(projectsKey),
                  child: const Text(
                    'Projects',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () => scrollTo(contactKey),
                  child: const Text(
                    'Contact',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 16),
              ]
            : null,
      ),
      drawer: ResponsiveLayout.isMobile(context)
          ? Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                    child: const Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                  ListTile(
                    title: const Text('About'),
                    onTap: () {
                      Navigator.pop(context);
                      scrollTo(aboutKey);
                    },
                  ),
                  ListTile(
                    title: const Text('Projects'),
                    onTap: () {
                      Navigator.pop(context);
                      scrollTo(projectsKey);
                    },
                  ),
                  ListTile(
                    title: const Text('Contact'),
                    onTap: () {
                      Navigator.pop(context);
                      scrollTo(contactKey);
                    },
                  ),
                ],
              ),
            )
          : null,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // 🧩 About Section
                Container(
                  key: aboutKey,
                  padding: const EdgeInsets.symmetric(
                    vertical: 60,
                    horizontal: 20,
                  ),
                  child: const AboutSection(),
                ),

                const SizedBox(height: 40),

                // 🧩 Projects Section
                Container(
                  key: projectsKey,
                  padding: const EdgeInsets.symmetric(
                    vertical: 60,
                    horizontal: 20,
                  ),
                  child: const ProjectsSection(),
                ),

                const SizedBox(height: 40),

                // 🧩 Contact Section
                Container(
                  key: contactKey,
                  padding: const EdgeInsets.symmetric(
                    vertical: 60,
                    horizontal: 20,
                  ),
                  child: const ContactSection(),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
