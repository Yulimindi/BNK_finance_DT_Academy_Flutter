import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:spring_client/domain/item.dart';
import 'package:http/http.dart' as http;

class ItemDetailScreen extends StatefulWidget {

  final int itemId;
  const ItemDetailScreen({super.key, required this.itemId});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {

  Item? _item;
  bool _isLoading = true;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _fetchItemDetail();
  }

  Future<void> _fetchItemDetail() async {
    try {
      final String baseUrl = 'http://localhost:8080';
      final response = await http.get(
        Uri.parse('$baseUrl/api/items/${widget.itemId}'),
      ).timeout(const Duration(seconds: 5));
      print('itemId : ${widget.itemId}');

      if(response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        setState(() {
          _item = Item.fromJson(json);
          _isLoading = false;
        });
      } else if(response.statusCode == 404) {
        setState(() {
          _errorMessage = '해당 상품을 찾을 수 없습니댕';
          _isLoading = false;
        });
      } else {
        throw Exception('서버 오류입니댕 : ${response.statusCode}');
      }
    } catch(e) {
      setState(() {
        _errorMessage = '데이터를 불러오지 못했습니댕 $e';
        _isLoading = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('제품 상세')),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : _errorMessage.isNotEmpty
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_errorMessage, style: TextStyle(color: Colors.redAccent)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isLoading = true;
                  _errorMessage = '';
                  _fetchItemDetail();
                });
              },
              child: Text('다시 시도'),
            ),
          ],
        ),
      )
          : _item == null
          ? Center(child: Text('데이터 없당께!!!!!!!!'))
          : Padding(
        padding: EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    child: Text('${_item!.id}', style: TextStyle(fontSize: 30)),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  _item!.name,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text('상세 설명 : ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(
                  _item!.description,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
