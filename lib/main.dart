// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      themeMode: ThemeMode.system,
      theme: ThemeData.light().copyWith(),
      darkTheme: ThemeData.dark().copyWith(),
      locale: Locale('en'),
      translationsKeys: {
        'en': {
          'lang': 'English',
          'appName': 'User App',
          'welcome': 'Welcome to userApp',
          'click': 'Click on the user to get more information',
          'settings': 'Settings',
          'language': 'Language',
          'darkTheme': 'Enable Dark Theme',
          'detail': 'User Details',
          'fname': 'Full-Name',
          'username': 'Username',
          'city': 'City',
          'web': 'Website',
          'phone': 'Phone',
          'company': 'Company',
          'mail': 'Email',
        },
        'ar': {
          'lang': 'العربيّة',
          'appName': 'تطبيق المستخدم',
          'welcome': 'مرحبًا بك في تطبيق المستخدم',
          'click': 'انقر فوق المستخدم للحصول على مزيد من المعلومات',
          'settings': 'الاعدادات',
          'language': 'اللّغة',
          'darkTheme': 'تفعيل المظهر الداكن',
          'detail': 'معلومات المستخدم',
          'fname': 'الاسم الكامل',
          'username': 'اسم المستخدم',
          'city': 'المدينة',
          'web': 'الموقع الالكتروني',
          'phone': 'رقم الهاتف',
          'company': 'اسم الشركة',
          'mail': 'البريد الالكتروني',
        },
        'fr': {
          'lang': 'Francais',
          'appName': 'l\'application utilisateur',
          'welcome': 'Bienvenue dans l\'application utilisateur',
          'click':
              'Cliquez sur l\'utilisateur pour obtenir plus d\'informations',
          'settings': 'Réglages',
          'language': 'La langue',
          'darkTheme': 'Activer le thème sombre',
          'detail': 'Détails de l\'utilisateur',
          'fname': 'Nom et Prénom',
          'username': 'Nom d\'utilisateur',
          'city': 'Ville',
          'web': 'Site Internet',
          'phone': 'Téléphone',
          'company': 'Entreprise',
          'mail': 'E-mail',
        },
      },
    ),
  );
}
