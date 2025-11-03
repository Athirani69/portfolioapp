import 'package:flutter/material.dart';
import 'package:portfolio/app/data/resume_data.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center, // center everything
      children: [
        const Text(
          'Contact',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Text('Let’s connect!', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: 40), // more spacing for balance
        // Email and Phone
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _contactItem(
              Icons.email,
              ResumeData.email,
              'mailto:${ResumeData.email}',
            ),
            const SizedBox(width: 40),
            _contactItem(
              Icons.phone,
              ResumeData.phone,
              'tel:${ResumeData.phone}',
            ),
          ],
        ),
        const SizedBox(height: 30),
        // Social links
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _contactItem(Icons.linked_camera, 'LinkedIn', ResumeData.linkedin),
            const SizedBox(width: 40),
            _contactItem(Icons.code, 'GitHub', ResumeData.github),
          ],
        ),
      ],
    );
  }

  Widget _contactItem(IconData icon, String label, String url) {
    return InkWell(
      onTap: () async {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 20, color: Colors.black87),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
