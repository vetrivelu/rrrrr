import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import '../Models/Clients.dart';

void main() {
  var client = new Client();
  client.name = "Vetri";
  client.phoneNumber = "Hello";
  client.email = " hi@ymail.com";
  client.password = "vuviuwb";
  client.storeName = "vrvbwvewevwv";
  client.corporateAddress = "vbbewbvewbew";
  client.proofType = " wvybeiuvbweiuvbiweubv";
  client.isAdmin = false;
  resgister(client);
}

// ignore: missing_return
Future<Client> resgister(Client client) async {
  var uri = Uri.parse('http://localhost:3000/api/Auth/client/register/');
  var request = new http.MultipartRequest('POST', uri);
  request.fields["name"] = client.name;
  request.fields["phoneNumber"] = client.phoneNumber;
  request.fields["email"] = client.email;
  request.fields["password"] = client.password;
  request.fields["storeName"] = client.storeName;
  request.fields["corporateAddress"] = client.corporateAddress;
  request.fields["proofType"] = client.proofType;
  request.fields["isAdmin"] = client.isAdmin as String;
  request.files.add(http.MultipartFile.fromBytes('image', await client.Proof.readAsBytes(), contentType: new MediaType('image', 'jpeg')));
  print(request.fields);
  var response = await request.send();
  if (response.statusCode == 200) {
    print('success');
  } else {
    print(response.statusCode);
  }
  // request.files.add(http.MultipartFile.fromPath(field, filePath))
}
