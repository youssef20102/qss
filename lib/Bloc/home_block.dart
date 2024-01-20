import 'dart:convert';
import 'dart:io';

import 'package:coffe_machien/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<CaseState> {
  HomeCubit() : super(CaseInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  bool isConnected = false;
  Socket? socket;
// Connect to server and listen
  void startConnection(context) {
    Socket.connect(ipAddress, port).then((Socket sock) {
      if (sock != null) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green,
          content: Text('Connected!'),
        ));
        isConnected = true;
        socket = sock;
        socket!.listen(dataHandler,
            onError: errorHandler, onDone: doneHandler, cancelOnError: false);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.redAccent,
          content: Text('Connect to machine please'),
        ));
      }
    });

    emit(SendMessageState());
  }

  // Handel the response was return from server
  void dataHandler(data) {
    final receivedMessage = String.fromCharCodes(data);
    print(String.fromCharCodes(data).trim().toLowerCase());
    if (receivedMessage.trim() != null) {
      isSent = false;
      emit(ReciveMessageState());
    }
  }
  // Handel any errors
  void errorHandler(error, StackTrace trace) {
    print('ErrorHandler');
    isConnected = false;
    print(error);
    emit(ErrorHandelerState());
  }

  void doneHandler() {
    print('DOneHandler');
    isConnected = false;
    emit(DoneHandelerState());
    exit(0);
  }

  bool isSent = false;
  String? drink2;

  // Send Message to server
  void sendMessage(context, drink) {
    socket?.write(drink);
    drink2 = drink;
    isSent = true;
    emit(SendMessageState());
  }
}
