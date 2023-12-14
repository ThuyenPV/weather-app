import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/uidata.dart';
import '../bloc/home_bloc.dart';

class MicrophoneWidget extends StatefulWidget {
  const MicrophoneWidget({Key? key}) : super(key: key);

  @override
  _MicrophoneWidgetState createState() => _MicrophoneWidgetState();
}

class _MicrophoneWidgetState extends State<MicrophoneWidget> {
  final SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  Future<void> _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  Future<void> _startListening() async {
    _lastWords = '';
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  Future<void> _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
    });
  }

  Widget _buildSpeechStatusText() {
    return Text(
      _speechToText.isNotListening
          ? 'Tap to speak'
          : _speechToText.isListening
              ? _lastWords
              : _speechEnabled
                  ? 'Tap the microphone to start listening...'
                  : 'Speech not available',
    );
  }

  Widget _buildMicrophoneButton() {
    return IconButton(
      onPressed: () {
        if (_speechToText.isNotListening) {
          _startListening();
        } else {
          _stopListening();
          context.read<HomeBloc>().add(AddMicrophoneAudioEvent(_lastWords));
        }
      },
      icon: _speechToText.isNotListening
          ? const Icon(
              Icons.mic_off,
              size: 32,
              color: AppColors.black,
            )
          : Lottie.asset(
              UIData.microphone,
              height: 32,
              width: 32,
            ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.all(16.0),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return AppColors.blue;
            }
            return _speechToText.isNotListening
                ? AppColors.grey500
                : AppColors.white;
          },
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(64),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child: _buildSpeechStatusText(),
        ),
        _buildMicrophoneButton(),
      ],
    );
  }
}
