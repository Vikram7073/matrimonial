import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrimonial/UI/profile/profile_page.dart';
import 'package:matrimonial/UI/profile_menu_screen.dart';
import 'package:matrimonial/UI/shortlist_screen.dart';

import 'home_screen.dart';
import 'match_screen.dart';
import 'membership_plan_screen.dart';







class BottomNavigationSelectionEvent {}

class BottomNavigationSelectionRefreshEvent extends BottomNavigationSelectionEvent {
  int? position;

  BottomNavigationSelectionRefreshEvent({required this.position});
}

class UpdateSelectedRefreshEvent
    extends BottomNavigationSelectionEvent {
  int? index;

  UpdateSelectedRefreshEvent(this.index);
}

class UpdateSelectedSuccessState extends BottomNavigationSelectionState {
  bool? onSelectedListing = true;
  bool? onSelectedBooking = false;
  bool? onSelectedHome = false;
  bool? onSelectedAccount = false;
  bool ? onSelectedProfile1=false;


  UpdateSelectedSuccessState({this.onSelectedListing, this.onSelectedBooking,
    this.onSelectedHome, this.onSelectedAccount,this.onSelectedProfile1});
}

class BottomNavigationSelectionState {}

class BottomNavigationSelectionInitialState
    extends BottomNavigationSelectionState {
  BottomNavigationSelectionInitialState();
}

class BottomNavigationSelectionIndexState
    extends BottomNavigationSelectionState {
  int index=0;

  BottomNavigationSelectionIndexState(this.index);
}



class BottomNavigationSelectionBloc extends Bloc<BottomNavigationSelectionEvent, BottomNavigationSelectionState> {
  BottomNavigationSelectionBloc() : super(BottomNavigationSelectionInitialState());

  final List<Widget> widgetOptions = <Widget>[
    HomeScreen(),
    MatchesScreen(),
    ShortedListScreen(),
    MembershipPlanScreen(),
    ProfileMenuScreen(),
  ];



  bool? onSelectedHomes = true;
  bool? onSelectedJob = false;
  bool? onSelectedNotification = false;
  bool? onSelectedProfile = false;
  bool? onSelectedProfile1=false;
  int? index;

  @override
  Stream<BottomNavigationSelectionState> mapEventToState(
      BottomNavigationSelectionEvent event) async* {
    if (event is BottomNavigationSelectionRefreshEvent) {
      if(event.position==0){
        onSelectedHomes=true;
        onSelectedJob=false;
        onSelectedNotification=false;
        onSelectedProfile=false;
        onSelectedProfile1=false;
      }
      else if(event.position==1){
        onSelectedHomes=false;
        onSelectedJob=true;
        onSelectedNotification=false;
        onSelectedProfile=false;
        onSelectedProfile1=false;

      }
      else if(event.position==2){
        onSelectedHomes=false;
        onSelectedJob=false;
        onSelectedNotification=true;
        onSelectedProfile=false;
        onSelectedProfile1=false;

      }
      else if(event.position==3){
        print(" vikram ");
        onSelectedHomes=false;
        onSelectedJob=false;
        onSelectedNotification=false;
        onSelectedProfile=true;
        onSelectedProfile1=false;
      }
      else if(event.position==4){
        print("asdfghjkl   ++++++++");
        onSelectedHomes=false;
        onSelectedJob=false;
        onSelectedNotification=false;
        onSelectedProfile=false;
        onSelectedProfile1=true;
      }
      index = event.position;
      yield BottomNavigationSelectionIndexState(event.position ?? 0);
    }
  }

}
