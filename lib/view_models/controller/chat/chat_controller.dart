import 'package:get/get.dart';

class ChatController extends GetxController {
 RxInt highlightedIndex = (-1).obs; // Initialize with -1 (no highlighted chat)

  void highlightChat(int index) {
    highlightedIndex.value = index;
  }
}