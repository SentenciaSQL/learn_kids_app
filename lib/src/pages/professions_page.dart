import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/classes/languages.dart';
import 'package:learn_kids_app/src/widgets/menu_widget.dart';

import 'package:learn_kids_app/src/widgets/back_button_widget.dart';
import 'package:learn_kids_app/src/widgets/item_container_widget.dart';

class ProfessionsPage extends StatefulWidget {

  static final routeName = 'professions';

  @override
  _ProfessionsPageState createState() => _ProfessionsPageState();
}

class _ProfessionsPageState extends State<ProfessionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.of(context).professionsPage),
      ),
      drawer: MenuWidget(),
      body: _createGridView(),
      floatingActionButton: BackButtonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }

  Widget _createGridView() {
    return CustomScrollView(
        primary: false,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 70),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: [
                ItemButtonWidget(Languages.of(context).doctor, '012-doctor.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).pilot, '016-pilot.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).policeman, '018-policeman.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).flightAttendant, '001-flight attendant.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).freelance, '002-freelance.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).gardener, '003-gardener.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).judge, '004-judge.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).worker, '005-worker.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).lawyer, '006-lawyer.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).magician, '007-magician.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).maid, '008-maid.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).manager, '009-manager.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).mechanic, '010-mechanic.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).musician, '011-musician.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).team, '013-team.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).painter, '014-painter.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).photographer, '015-photographer.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).plumber, '017-plumber.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).programmer, '019-programmer.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).receptionist, '020-receptionist.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).reporter, '021-reporter.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).sailor, '022-sailor.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).salesman, '023-Salesman.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).scientist, '024-scientist.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).secretary, '025-secretary.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).securityMan, '026-security man.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).singer, '027-singer.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).soldier, '028-soldier.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).student, '029-student.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).tailor, '030-tailor.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).teacher, '031-teacher.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).technician, '032-technician.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).veterinarian, '033-veterinarian.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).waiter, '034-waiter.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).waitress, '035-waitress.png', ProfessionsPage.routeName),
                ItemButtonWidget(Languages.of(context).writer, '036-writer.png', ProfessionsPage.routeName),
              ],
            )
          )
        ]
    );
  }
}
