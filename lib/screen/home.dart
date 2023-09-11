import 'package:curriculum_vitae/model/cv_data.dart';
import 'package:curriculum_vitae/screen/edit.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CVView extends StatefulWidget {
  late CVData cvData;

  CVView({Key? key, required this.cvData}) : super(key: key);

  @override
  State<CVView> createState() => _CVViewState();
}

class _CVViewState extends State<CVView> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CURRICULUM VITAE'),
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth > 600 ? 32.0 : 16.0),
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Full Name: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  TextSpan(
                    text: widget.cvData.fullName,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Slack Username: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  TextSpan(
                    text: widget.cvData.slackUsername,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: <TextSpan>[
                  const TextSpan(
                    text: 'GitHub Handle: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  TextSpan(
                    text: widget.cvData.githubHandle,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Personal Bio: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  TextSpan(
                    text: widget.cvData.personalBio,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () async {
                    final updatedCVData = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditCVPage(cvData: widget.cvData),
                      ),
                    );

                    if (updatedCVData != null) {
                      setState(() {
                        widget.cvData = updatedCVData;
                      });
                    }
                  },
                  child: const Text(
                    'Edit CV',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
