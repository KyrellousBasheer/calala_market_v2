import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField();

  @override
  Widget build(BuildContext context) {
    final void Function(String) onSubmitted;
    final void Function(String) onChanged;
    TextEditingController controller = TextEditingController();

    return TextField(
      onChanged: (text) {},
      onSubmitted: (text) {},
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        hintText: 'Search for anything...',
        suffixIcon: IconButton(
          onPressed: () {
            var text = controller.text;
            if (kDebugMode) {
              print(text);
            }
          },
          icon: const Icon(Icons.search),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
      ),
    );
  }
}
