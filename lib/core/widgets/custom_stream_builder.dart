import 'dart:async';

import 'package:flutter/material.dart';

class CustomStreamBuilder extends StatefulWidget {
  const CustomStreamBuilder({super.key, required this.configStream, required this.builder});

  final Stream configStream;
  final Widget Function(BuildContext, AsyncSnapshot<dynamic>) builder;

  @override
  State<CustomStreamBuilder> createState() => _CustomStreamBuilderState();
}

class _CustomStreamBuilderState extends State<CustomStreamBuilder> {
  final StreamController _streamController = StreamController();
  late Stream _configStream;

  @override
  void initState() {
    super.initState();
    Stream configStream = widget.configStream.asBroadcastStream();
    _configStream = configStream.map((event) {
      return event;
    }).distinct();
    _streamController.add(configStream);
  }

  @override
  dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _configStream,
      builder: widget.builder,
    );
  }
}
