import 'dart:convert';
import 'dart:io';

import 'package:live_assesment/features/pagination/data/product_model.dart';
import 'package:path_provider/path_provider.dart';

class CashingProducts {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/products.txt');
  }

  Future<List<Product>> readProducts() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();
      final data = json.decode(contents) as List;

      return data.map((json) => Product.fromJson(json)).toList();
    } catch (e) {
      // If encountering an error, return empty list
      return [];
    }
  }

  Future<File> writeProducts(List<Product> products) async {
    final file = await _localFile;

    // Write the file
    return file
        .writeAsString(json.encode(products.map((e) => e.toJson()).toList()));
  }

  Future<void> clearProducts() async {
    final file = await _localFile;
    file.writeAsString('[]');
  }
}
