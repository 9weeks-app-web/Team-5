import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final nameController = TextEditingController();
  final nicknameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final mobileController = TextEditingController();
  final authenticationController = TextEditingController();

  final nameFocusnode = FocusNode();
  final nicknameFocusnode = FocusNode();
  final emailFocusnode = FocusNode();
  final passwordFocusnode = FocusNode();
  final confirmPasswordFocusnode = FocusNode();
  final mobileFocusnode = FocusNode();
  final authenticationFocusnode = FocusNode();

  bool isNameEmpty = true;
  bool isEmailEmpty = true;
  bool isEmailValid = true;
  bool isNicknameEmpty = true;
  bool isPasswordEmpty = true;
  bool isPasswordValid = true;
  bool isConfirmPasswordEmpty = true;
  bool isMobileEmpty = true;
  bool isAuthenticationEmpty = true;

  void checkIfNameIsEmpty() {
    isNameEmpty = nameController.text.isEmpty;
    update();
  }

  void checkIfEmailIsEmpty() {
    isEmailEmpty = emailController.text.isEmpty;
    update();
  }

  void checkIfEmailIsValid() {
    isEmailValid = _isEmailValid(emailController.text);
    update();
  }

  bool _isEmailValid(String email) {
    final emailPattern = RegExp(
      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
    );
    return emailPattern.hasMatch(email);
  }

  void checkIfNicknameIsEmpty() {
    isNicknameEmpty = nicknameController.text.isEmpty;
    update();
  }

  void checkIfPasswordIsEmpty() {
    isPasswordEmpty = passwordController.text.isEmpty;
    update();
  }
  void checkIfPasswordsValid() {
    isPasswordValid = _isPasswordValid(passwordController.text);
    update();
  }

  bool _isPasswordValid(String password) {
    final passwordPattern = RegExp(
      r'^(?=.*[A-Za-z])(?=.*\d|.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<>]{10,16}$',
    );
    return passwordPattern.hasMatch(password);
  }

  void checkIfConfirmPasswordIsEmpty() {
    isConfirmPasswordEmpty = confirmPasswordController.text.isEmpty;
    update();
  }

  void checkIfMobileIsEmpty() {
    isMobileEmpty = mobileController.text.isEmpty;
    update();
  }

  void checkIfAuthenticationIsEmpty() {
    isAuthenticationEmpty = authenticationController.text.isEmpty;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    // 텍스트 변경 감지
    nameController.addListener(checkIfNameIsEmpty);
    nameFocusnode.addListener(checkIfNameIsEmpty);
    nicknameController.addListener(checkIfNicknameIsEmpty);
    nicknameFocusnode.addListener(checkIfNicknameIsEmpty);
    emailController.addListener(checkIfEmailIsEmpty);
    emailFocusnode.addListener(checkIfEmailIsValid);
    mobileController.addListener(checkIfMobileIsEmpty);
    mobileFocusnode.addListener(checkIfMobileIsEmpty);
    passwordController.addListener(checkIfPasswordIsEmpty);
    passwordFocusnode.addListener(checkIfPasswordIsEmpty);
    confirmPasswordController.addListener(checkIfConfirmPasswordIsEmpty);
    confirmPasswordFocusnode.addListener(checkIfConfirmPasswordIsEmpty);
    authenticationController.addListener(checkIfAuthenticationIsEmpty);
    authenticationFocusnode.addListener(checkIfAuthenticationIsEmpty);
  }

  @override
  void onClose() {
    nameController.dispose();
    nameFocusnode.dispose();
    nicknameController.dispose();
    nameFocusnode.dispose();
    emailController.dispose();
    emailFocusnode.dispose();
    mobileController.dispose();
    mobileFocusnode.dispose();
    passwordController.dispose();
    passwordFocusnode.dispose();
    confirmPasswordController.dispose();
    confirmPasswordFocusnode.dispose();
    authenticationController.dispose();
    authenticationFocusnode.dispose();
    super.onClose();
  }

  var showSheet = false.obs;

  void toggleShowSheet() {
    showSheet.value = !showSheet.value;
  }
}
