import 'package:curriculum_vitae/model/cv_data.dart';
import 'package:flutter/material.dart';

class EditCVPage extends StatefulWidget {
  final CVData cvData;

  const EditCVPage({Key? key, required this.cvData}) : super(key: key);

  @override
  State<EditCVPage> createState() => _EditCVPageState();
}

class _EditCVPageState extends State<EditCVPage> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _slackUsernameController =
      TextEditingController();
  final TextEditingController _githubHandleController = TextEditingController();
  final TextEditingController _personalBioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fullNameController.text = widget.cvData.fullName;
    _slackUsernameController.text = widget.cvData.slackUsername;
    _githubHandleController.text = widget.cvData.githubHandle;
    _personalBioController.text = widget.cvData.personalBio;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Edit CV'),
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth > 600 ? 32.0 : 16.0),
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            TextFormField(
              controller: _fullNameController,
              decoration: const InputDecoration(
                  labelText: 'Full Name', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _slackUsernameController,
              decoration: const InputDecoration(
                  labelText: 'Slack Username', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _githubHandleController,
              decoration: const InputDecoration(
                  labelText: 'GitHub Handle', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _personalBioController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: const InputDecoration(
                labelText: 'Personal Bio',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                final updatedCVData = CVData(
                  fullName: _fullNameController.text,
                  slackUsername: _slackUsernameController.text,
                  githubHandle: _githubHandleController.text,
                  personalBio: _personalBioController.text,
                );
                Navigator.pop(context, updatedCVData);
              },
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
