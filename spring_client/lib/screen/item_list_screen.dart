import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:spring_client/domain/item.dart';
import 'package:http/http.dart' as http;
import 'package:spring_client/screen/item_detail_screen.dart';

class ItemListScreen extends StatefulWidget {
  const ItemListScreen({super.key});

  @override
  State<ItemListScreen> createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {

  List<Item> _items = [];
  bool _isLoading = true;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _fetchItems();
  }

  Future<void> _fetchItems() async {
    try {
      final response = await http.get(
        Uri.parse("http://localhost:8080/api/items"),
      ).timeout(const Duration(seconds: 5));

      if(response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        setState(() {
          _items = body.map((json) => Item.fromJson(json)).toList();
          _isLoading = false;
        });
      } else {
        throw Exception('서버 응답 오류 : ${response.statusCode}');
      }
    } catch(e) {
      setState(() {
        _errorMessage = '데이터를 못불렀당께 : $e';
        _isLoading = false;

      });
  }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('상품 목록')),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : _errorMessage.isNotEmpty
          ? Center(child: Text(_errorMessage))
          : ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(child: Text('${item.id}')),
              title: Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(item.description),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                print("onTap ${item.id}");
                Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetailScreen(itemId: item.id),),);
              },
            ),
          );
        },
      ),
    );
  }
}
