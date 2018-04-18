import 'dart:io';

import 'package:servicestack/client.dart';

import 'techstacks.dtos.dart';

var client = new JsonServiceClient("https://www.techstacks.io");

main() async {
  var response = await client.get(new GetTechnology(slug: "flutter"));
  print("${response.technology.name}: ${response.technology.vendorUrl}");

  exit(0);
}
