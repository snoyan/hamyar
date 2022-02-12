import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'endpints.dart';
import 'nurse_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

//save token taken from signup user
void upDateSharedPreferences(String token) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  _prefs.setString('token', token);
}

class Network {
  List<Nurse> nurses = [];

  String parseHtmlString(String htmlString) {
    final document = parse(htmlString);
    final String parsedString =
        parse(document.body!.text).documentElement!.text;
    return parsedString;
  }

  //////////////////////// put request/////////////////////////

  loginToken(String username, String password) async {
    /* Map data = {
    'username': '$username'
  }*/
    final response = await http.post(
      Uri.parse('https://epic1729.pythonanywhere.com/api-token-auth/'),
      headers: <String, String>{
        'Authorization': apiKey,
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
          <String, String>{'username': username, 'password': password}),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> token = json.decode(response.body);
      upDateSharedPreferences(token['token']);
      //return true;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load user');
    }
  }

  ////////////////////// put request/////////////////////////
  void netUpdate(int id, String endpoint) async {
    var url = Uri.parse(
      baseUrl + endpoint + id.toString() + '/',
    );
    try {
      http.Response response = await http.put(
        url,
        headers: <String, String>{
          'Authorization': apiKey,
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{
          // "model_pic": "https://epic1729.pythonanywhere.com/media/postImage/blockchain.jpg",
          "firstName": "neda",
          "lastName": "khani",
          "gender": "F",
          "age": 22,
          "phoneNumber": "11111111111",
          "state": "15",
          "city": "tehran",
          "workCondition": "tehransar",
          "rate": 2,
          "created": "2022-02-09T11:14:01.863888Z"
        }),
      );
      if (response.statusCode == 200) {
        print('is changed');
      } else {
        print('is not changed');
      }
    } catch (exception) {
      print(exception);
    }
  }

////////////////////// post request/////////////////////////
  void netCreate(int id, String endpoint) async {
    var url = Uri.parse(
      baseUrl + endpoint,
    );
    try {
      http.Response response = await http.post(
        url,
        headers: <String, String>{
          'Authorization': apiKey,
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{
          // "imageUrl": "https://epic1729.pythonanywhere.com/media/postImage/blockchain.jpg",
          "firstName": "neda",
          "lastName": "khani",
          "gender": "F",
          "age": 22,
          "phoneNumber": "11111111111",
          "state": "15",
          "city": "tehran",
          "workCondition": "tehransar",
          "rate": 2,
          "created": "2022-02-09T11:14:01.863888Z"
        }),
      );
      if (response.statusCode == 200) {
        print('is created');
      } else {
        print('is not create');
      }
    } catch (exception) {
      print(exception);
    }
  }

////////////////////// get request//////////////////////////
  Future<List<Nurse>> netGet(String endpoint) async {
    var url = Uri.parse(
      baseUrl + endpoint,
    );
    try {
      http.Response response = await http.get(
        url,
        headers: <String, String>{
          'Authorization': apiKey,
          'Content-Type': "application/json; charset=utf-8",
        },
      );
      if (response.statusCode == 200) {
        String body = utf8.decode(response.bodyBytes);
        print(body);
        print('////////////////////////////////////////');

        print('is correct');
        var x = json.decode(utf8.decode(response.bodyBytes));
        // var x = json.decode(response.body);
        int t = 0;
        for (var i in x) {
          nurses.add(Nurse(
            id: x[t]['id'].toString(),
            firstName: x[t]['firstName'],
            lastName: x[t]['lastName'],
            gender: x[t]['gender'],
            age: x[t]['age'],
            email: x[t]['email'].toString(),
            phoneNumber: x[t]['phoneNumber'],
            imageUrl: x[t]['imageUrl'],
            state: x[t]['state'],
            city: x[t]['city'],
            workExperience: x[t]['workExperience'],
            workCondition: x[t]['workCondition'],
            rate: x[t]['rate'],
            created: x[t]['created'].toString(),
          ));

          t++;
        }
        print(nurses);
        return nurses;
        // var image;
        // image = x[1]['model_pic'];
        // var firstName = x[1]['firstName'];
        // var lastName = x[1]['lastName'];
        // var gender = x[1]['gender'];
        // var age = x[1]['age'];
        // var phoneNumber = x[1]['phoneNumber'];

        // print('firstName : $firstName');
        // print('lastName : $lastName');
        // print('age : $age');
        // print('gender : $gender');
        // print('phoneNumber : $phoneNumber');
      } else {
        print('is not correct');
        return nurses;
      }
    } catch (exception) {
      print(exception);
      return nurses;
    }
  }

  //////////////// delete request/////////////////////////

  void netDelete(int id, String endpoint) async {
    var url = Uri.parse(
      baseUrl + endpoint + id.toString() + '/',
    );
    try {
      http.Response response = await http.delete(
        url,
        headers: <String, String>{
          'Authorization': apiKey,
        },
      );
      if (response.statusCode == 200) {
        print('is deleted');
      } else {
        print('is not delete');
      }
    } catch (exception) {
      print(exception);
    }
  }
}
