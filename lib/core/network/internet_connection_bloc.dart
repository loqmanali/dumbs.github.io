// import 'dart:async';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
//
// part 'internet_connection_event.dart';
// part 'internet_connection_state.dart';
//
// class InternetConnectionBloc extends Bloc<InternetConnectionEvent, InternetConnectionState> {
//
//   StreamSubscription? subscription;
//
//   InternetConnectionBloc() : super(InternetConnectionInitial()) {
//     on<InternetConnectionEvent>((event, emit) {
//       if(event is InternetConnectionChanged) {
//         emit(InternetConnectionChangedState(event.hasConnection));
//       } else if(event is InternetConnected) {
//         emit(InternetConnectedState('Internet Connected'));
//       } else if(event is NoInternetConnection) {
//         emit(NoInternetConnectionState('No Internet Connection'));
//       }
//     });
//     subscription = Connectivity().onConnectivityChanged.listen((event) {
//       if(event == ConnectivityResult.none) {
//         add(NoInternetConnection());
//       } else {
//         add(InternetConnected());
//       }
//     });
//   }
//
//   @override
//   Future<void> close() {
//     subscription?.cancel();
//     return super.close();
//   }
// }
