import 'package:bmcah/models/investigation_model.dart';
import 'package:bmcah/repositories/investigation_repo.dart';
import 'package:flutter/material.dart';

class InvestigationView extends StatefulWidget {
  @override
  State<InvestigationView> createState() => _InvestigationViewState();
}

class _InvestigationViewState extends State<InvestigationView> {
  List<InvestigationModel> invList = [];
  bool isLoading=true;
  @override
  void initState() {
    super.initState();
    InvestigationRepo.getInvList().then((value) {
      setState(() {
        isLoading=false;
        print(isLoading);
        invList.addAll(value);

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Investigation'),
      
      ),
      body: isLoading==true
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: invList.length,
              itemBuilder: (context, index) {
                InvestigationModel investigation = invList.elementAt(index);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.black12,
                    child: ListTile(
                      title: Text('${investigation.name}'),
                      subtitle: Text('${investigation.price}'),
                    ),
                  ),
                );
              },
            ),
    );
  }


}
