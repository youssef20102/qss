import 'dart:io';

import 'package:coffe_machien/components/constants.dart';


void main() async {
  try {
    final server = await ServerSocket.bind(ipAddress, port);
    print('Server listening on ${server.address}:${server.port}');

    await for (var socket in server) {
      handleConnection(socket);
    }
  } catch (e) {
    print('Erro creating server socket: $e');
  }
}

void handleConnection(Socket socket) {
  print('New connection from ${socket.remoteAddress.address}:${socket.remotePort}');

  socket.write('connected');

  socket.listen(
        (List<int> data) {
      final receivedMessage = String.fromCharCodes(data);
      print('Received: $receivedMessage');

      // Check if the received message is from the client
      if (receivedMessage.trim().toLowerCase() == 'american coffee') {
        // Delay for 5 seconds and then send a message back to the client
        Future.delayed(Duration(seconds: 5), () {
          socket.write('The American Coffee is done');
        });
      }else if(receivedMessage.trim().toLowerCase() == 'capp. fantaze'){
        Future.delayed(Duration(seconds: 5), () {
          socket.write('The American Coffee is done');
        });
      }else if(receivedMessage.trim().toLowerCase() == 'karak tea'){
        Future.delayed(Duration(seconds: 5), () {
          socket.write('The Karak Tea  is done');
        });
      }else if(receivedMessage.trim().toLowerCase() == 'mochacaino'){
        Future.delayed(Duration(seconds: 5), () {
          socket.write('The Mochacaino is done');
        });
      }else if(receivedMessage.trim().toLowerCase() == 'essepresso'){
        Future.delayed(Duration(seconds: 5), () {
          socket.write('The Essepresso is done');
        });
      }else if(receivedMessage.trim().toLowerCase() == 'capp. hazelnut'){
        Future.delayed(Duration(seconds: 5), () {
          socket.write('The Capp. Hazelnut is done');
        });
      }else{

      }
    },
    onDone: () {
      print('Client disconnected');
    },
    onError: (error) {
      print('Error: $error');
      socket.destroy();
    },
    cancelOnError: true,
  );
}
