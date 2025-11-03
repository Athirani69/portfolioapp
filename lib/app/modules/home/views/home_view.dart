import 'package:flutter/material.dart';
import 'package:portfolio/app/core/responsive/responsive.dart';
import 'package:portfolio/app/modules/home/widgets/about_section.dart';
import 'package:portfolio/app/modules/home/widgets/contact_section.dart';
import 'package:portfolio/app/modules/home/widgets/project_section.dart';
import 'package:portfolio/app/modules/home/widgets/experience_section.dart'; 

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final scrollController = ScrollController();
  final aboutKey = GlobalKey();
  final experienceKey = GlobalKey(); // new key
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        title: const Text(
          'Athirani C P',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
        centerTitle: false,
        actions: ResponsiveLayout.isDesktop(context)
            ? [
                _navItem('About', () => scrollTo(aboutKey)),
                _navItem('Experience', () => scrollTo(experienceKey)), // new
                _navItem('Projects', () => scrollTo(projectsKey)),
                _navItem('Contact', () => scrollTo(contactKey)),
                const SizedBox(width: 20),
              ]
            : null,
      ),
      drawer: ResponsiveLayout.isMobile(context)
          ? Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blueAccent[700]),
                    child: const Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  _drawerItem('About', () => scrollTo(aboutKey)),
                  _drawerItem('Experience', () => scrollTo(experienceKey)), // new
                  _drawerItem('Projects', () => scrollTo(projectsKey)),
                  _drawerItem('Contact', () => scrollTo(contactKey)),
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
                _section(aboutKey, const AboutSection()),
                _section(experienceKey, const ExperienceSection()), // new
                _section(projectsKey, ProjectsSection()),
                _section(contactKey, const ContactSection()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _navItem(String title, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _drawerItem(String title, VoidCallback onTap) {
    return ListTile(
      title: Text(title, style: const TextStyle(fontSize: 16)),
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
    );
  }

  Widget _section(GlobalKey key, Widget child) {
    return Container(
      key: key,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      child: child,
    );
  }
}
