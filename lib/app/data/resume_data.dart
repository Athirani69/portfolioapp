import 'package:flutter/material.dart';
import 'package:portfolio/app/core/constants/appimages.dart';

class ResumeData {
  // Basic Info
  static const name = "Athirani C P";
  static const title = "Flutter Developer";
  static const email = "Athirani69@gmail.com";
  static const phone = "9037345938";
  static const location = "Kannur, Kerala";
  static const linkedin = "https://www.linkedin.com/in/athirani-cp-7ba1111bb/";
  static const github = "https://github.com/Athirani69";

  // Profile Summary
  static const profile =
      "Flutter Developer with a strong foundation in software development, backed by a Bachelor’s and Master’s degree "
      "in Computer Applications. Currently working at EBS Pvt Ltd, Cyberpark, developing cross-platform mobile "
      "applications using Flutter and Dart. Skilled in building clean, scalable, and high-performance apps with a focus "
      "on UI/UX, state management, and API integration. Quick learner, passionate about mobile technologies, and "
      "committed to writing maintainable code that solves real-world problems.";

  // Experience
  static const experience = [
    {
      "role": "Flutter Developer - EBS Private Ltd",
      "period": "Apr 2025 – Present",
      "location": "Kozhikode, India",
      "summary":
          "Contributing to a School Bus Tracking System consisting of two apps — Parent App and Driver App — with real-time tracking, notifications, and route management. "
          "Focused on developing robust APIs, driver-side workflow management, and optimizing state management using GetX.",
    },
    {
      "role": "Flutter Intern - Progbiz Private Ltd",
      "period": "Feb 2024 – May 2024",
      "location": "Kannur, India",
      "summary":
          "Worked on Flutter projects, collaborated with teams, and improved technical proficiency through real-world mobile app development.",
    },
  ];

  // Skills
  static const skills = [
    {"name": "Windows", "icon": Icons.window},
    {"name": "Linux", "icon": Icons.laptop},
    {"name": "Dart", "icon": Icons.code},
    {"name": "Flutter", "icon": Icons.flutter_dash},
    {"name": "Python", "icon": Icons.memory},
    {"name": "API", "icon": Icons.api},
    {"name": "HTML", "icon": Icons.language},
    {"name": "CSS", "icon": Icons.style},
    {"name": "Bootstrap", "icon": Icons.layers},
    {"name": "Firebase", "icon": Icons.cloud},
    {"name": "MySQL", "icon": Icons.storage},
    {"name": "MongoDB", "icon": Icons.storage_outlined},
    {"name": "MS Word", "icon": Icons.description},
    {"name": "MS Excel", "icon": Icons.grid_3x3},
    {"name": "MS PowerPoint", "icon": Icons.slideshow},
  ];

  // Certificates
  static const certificates = [
    {
      "name": "Google Flutter Full-Stack Application Development",
      "issuer": "Logix Space Technologies Pvt Ltd",
      "date": "December 2024",
    },
    {"name": "Cloud Computing", "issuer": "NPTEL", "date": "December 2023"},
    {
      "name": "Python Full Stack Development",
      "issuer": "Quest Innovative Solutions Pvt Ltd",
      "date": "May 2022",
    },
    {"name": "Operating System", "issuer": "NPTEL", "date": "October 2023"},
  ];

  // Projects
  static const projects = [
    {
      "name": "School Bus Tracking System",
      "period": "04/2025 – Present",
      "location": "Kozhikode, India",
      "description":
          "A comprehensive real-time school bus tracking system consisting of two Flutter apps — Parent App and Driver App. "
          "Parents can view live bus locations, receive notifications, and track pickup/drop status. "
          "Drivers manage routes, student attendance, and trip progress through an intuitive dashboard. "
          "Built with Flutter and Firebase for scalability, security, and real-time data handling.",
      "tech": "Flutter, Dart, GetX",
      "image": AppImages.driver,
    },
    {
      "name": "Unskul",
      "period": "04/2025 – Present",
      "location": "Kozhikode, India",
      "description":
          "Unskul is a Flutter-based educational platform designed to deliver interactive learning experiences through live classes, recorded lessons, and purchasable courses. "
          "The app integrates secure payments and AI-powered features using Gemini for personalized learning. "
          "It includes scalable UI components, real-time modules, and efficient API integration to enhance engagement.",
      "tech": "Flutter, Dart, Razorpay, Gemini AI",
      "image": AppImages.driver,
    },
    {
      "name": "Zinea",
      "period": "02/2024 – 05/2024",
      "location": "Kannur, India",
      "description":
          "Zinea is a Flutter-based entertainment platform integrating OTT video streaming, music playback, short videos (reels), real-time chat, celebrity profiles, and booking modules. "
          "It delivers a dynamic experience through secure authentication, Firebase backend, and optimized performance across all media features.",
      "tech": "Flutter, Dart",
      "image": AppImages.driver,
    },
    {
      "name": "CartWave",
      "period": "02/2024 – 05/2024",
      "location": "Kannur, India",
      "description":
          "An e-commerce app built with Flutter and Firebase featuring admin and user modules. Supports real-time cart updates, authentication, and product management.",
      "tech": "Flutter, Firebase",
      "image": AppImages.driver,
    },
  ];
}
