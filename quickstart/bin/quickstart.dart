
import 'dart:io';

import 'package:general_public_language/core/core.dart' show GeneralPublicLanguage;
 

Future<String> ask({
  required String text,
}) async {
  while (true) {
    print("");

    stdout.write("${text}?: ");
    // print("${text}?: ");
    final String? input = stdin.readLineSync();
    if (input != null && input.trim().isNotEmpty) {
      return input.trim();
    }
  }
}

void main(List<String> args) async {
  print("start");
  final GeneralPublicLanguage generalPublicLanguage = GeneralPublicLanguage();

  generalPublicLanguage.ensureInitialized();

  // atur log menjadi 0
  // karena tidak mungkin akan log di production mode
  //
  generalPublicLanguage.invokeSync({
    "@type": "setLogVerbosityLevel",
    "new_verbosity_level": 0,
  });

  generalPublicLanguage.on("update", (Map update) async {
    print(update);
  });
 

  await generalPublicLanguage.initialized();
  print("program started");
  final newClientId = generalPublicLanguage.createClient();

  await generalPublicLanguage.invoke({
    "@type": "getAuthorizationState",
    "@client_id": newClientId,
  });
}

