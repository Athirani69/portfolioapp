import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/app/core/constants/appimages.dart';
import 'package:portfolio/app/data/resume_data.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "// Developer Profile",
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
              fontFamily: 'monospace',
            ),
          ),
          const SizedBox(height: 30),

          // 🧩 Responsive Row — photo + code card
          Flex(
            direction: isMobile ? Axis.vertical : Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 👤 Profile Image
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/AthiraniResume.png',
                  width: isMobile ? 150 : 200,
                  height: isMobile ? 150 : 200,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    width: 150,
                    height: 150,
                    color: Colors.grey[300],
                    child: const Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 40, height: 40),

              // 💻 Code Card
              Container(
                width: isMobile ? double.infinity : 450,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF0E1116),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "const developer = {",
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 16,
                        fontFamily: 'monospace',
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '  name: "Athirani C P",',
                      style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 16,
                        fontFamily: 'monospace',
                      ),
                    ),
                    Text(
                      '  role: "Flutter Developer",',
                      style: TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 16,
                        fontFamily: 'monospace',
                      ),
                    ),
                    Text(
                      '  location: "Kannur, Kerala",',
                      style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 16,
                        fontFamily: 'monospace',
                      ),
                    ),
                    Text(
                      '  passion: "Mobile Tech"',
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 16,
                        fontFamily: 'monospace',
                      ),
                    ),
                    Text(
                      "};",
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 16,
                        fontFamily: 'monospace',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),
          // 🧩 Buttons Row
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 16,
            runSpacing: 10,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                ),
                onPressed: () async {
                  final Uri email = Uri(
                    scheme: 'mailto',
                    path: ResumeData.email,
                    query: 'subject=Let\'s Connect!',
                  );
                  if (await canLaunchUrl(email)) await launchUrl(email);
                },
                icon: const Icon(Icons.mail, color: Colors.white),
                label: const Text(
                  "Contact Me",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blueAccent),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () async {
                  final Uri pdfUri = Uri.parse(
                    "https://yourdomain.com/Athirani-Resume.pdf",
                  );
                  if (await canLaunchUrl(pdfUri)) {
                    await launchUrl(
                      pdfUri,
                      mode: LaunchMode.externalApplication,
                    );
                  }
                },
                icon: const Icon(Icons.description, color: Colors.blueAccent),
                label: const Text(
                  "Resume",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ],
          ),

          const SizedBox(height: 25),

          // 🌐 Social Icons Row
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            children: [
              _socialIcon(AppImages.linkedin, ResumeData.linkedin, size: 20),
              _socialIcon(AppImages.git, ResumeData.github, size: 20),
              _socialIcon(
                AppImages.email,
                'mailto:${ResumeData.email}',
                size: 20,
              ),
              _socialIcon(AppImages.call, 'tel:${ResumeData.phone}', size: 20),
            ],
          ),
          const SizedBox(height: 40),

          // 🧩 Skills Section
          // 🧩 Skills Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Skills",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: ResumeData.skills.map((skill) {
                  return Chip(
                    avatar: Icon(
                      skill['icon'] as IconData, // cast to IconData
                      size: 20,
                      color: Colors.blueAccent,
                    ),
                    label: Text(
                      skill['name'] as String, // cast to String
                    ),
                    backgroundColor: Colors.grey[200],
                    labelStyle: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }).toList(),
              ),
            ],
          ),

          const SizedBox(height: 30),

          // 🧩 Certificates Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Certificates",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Column(
                children: ResumeData.certificates.map((cert) {
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      leading: const Icon(
                        Icons.school,
                        color: Colors.blueAccent,
                      ),
                      title: Text(cert['name']!),
                      subtitle: Text("${cert['issuer']} • ${cert['date']}"),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _socialIcon(String imageAsset, String url, {double size = 24}) {
    return InkWell(
      onTap: () async {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blueAccent, width: 1.5),
        ),
        child: Image.asset(
          imageAsset,
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
