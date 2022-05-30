import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const String appLogo = 'assets/icon/icon.png';

class ProfilePage extends StatelessWidget {
  static const String path = "lib/src/pages/profile/profile11.dart";
  @override
  Widget build(BuildContext context) {
    var _itemHeader = TextStyle(
      color: Colors.grey.shade600,
      fontSize: 16.0,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "アカウント情報",
          style: Theme.of(context).textTheme.headline6,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20.0),
          Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Stack(
                children: [
                  //avatar
                  Ink(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(appLogo), fit: BoxFit.cover),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(1.5,1.5),
                    child: MaterialButton(
                      minWidth: 0,
                      child: const Icon(Icons.camera_alt),
                      onPressed: (){},
                      textColor: Colors.white,
                      color: Theme.of(context).colorScheme.secondary,
                      elevation: 0,
                      shape: const CircleBorder(),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              "通知設定",
              style: _itemHeader,
            ),
            leading: const Icon(Icons.notifications),
          ),
          SwitchListTile(
            value: true,
            title: const Text("メール通知"),
            onChanged: (value) {},
            secondary: const SizedBox(
              width: 10,
            ),
          ),
          SwitchListTile(
            value: false,
            title: const Text("プッシュ通知"),
            onChanged: (value) {},
            secondary: const SizedBox(
              width: 10,
            ),
          ),
          _buildDivider(),
          ListTile(
            title: Text(
              "プロフィール",
              style: _itemHeader,
            ),
            leading: const Icon(Icons.person),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "姓",
                      helperText: "例：佐藤",
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "名",
                      helperText: "例：一郎",
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "姓（カナ）",
                      helperText: "例：サトウ",
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "名（カナ）",
                      helperText: "例：イチロウ",
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  InputDatePickerFormField(
                    firstDate: DateTime(DateTime.now().year - 5),
                    lastDate: DateTime(DateTime.now().year + 5),
                    initialDate: DateTime.now(),
                    fieldLabelText: "誕生日",
                  ),
                  const SizedBox(height: 10.0),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "メールアドレス",
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]
            ),
          ),
          const ListTile(
            title: Text("フィードバック"),
            subtitle: Text(""),
            leading: Icon(Icons.feedback),
          ),
          const ListTile(
            title: Text("利用規約・ガイドライン"),
            subtitle: Text(""),
            leading: Icon(FontAwesomeIcons.fileContract),
          ),
          const ListTile(
            title: Text("ログアウト"),
            subtitle: Text(""),
            leading: Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }

  Padding _buildDivider() {
    return const Padding(
      padding: EdgeInsets.only(left: 70),
      child: Divider(
        color: Colors.black,
      ),
    );
  }
}