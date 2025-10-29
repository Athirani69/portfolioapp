import 'package:flutter/material.dart';
import 'package:portfolio/app/data/resume_data.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Contact', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        Text('Let’s connect!', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: 16),
        SelectableText('📧 ${ResumeData.email}'),
        SelectableText('📞 ${ResumeData.phone}'),
        const SizedBox(height: 16),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 16,
          children: [
            _buildLink('LinkedIn', ResumeData.linkedin),
            _buildLink('GitHub', ResumeData.github),
          ],
        ),
      ],
    );
  }

  Widget _buildLink(String title, String url) {
    return TextButton.icon(
      icon: const Icon(Icons.link),
      label: Text(title),
      onPressed: () async {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      },
    );
  }
}
