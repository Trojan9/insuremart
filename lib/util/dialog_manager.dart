import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_marts/core/models/dialog_model.dart';
import 'package:insure_marts/locator.dart';
import 'package:insure_marts/util/styles.dart';
import 'dialog_service.dart';

class DialogManager extends StatefulWidget {
  const DialogManager({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  _DialogManagerState createState() => _DialogManagerState();
}

class _DialogManagerState extends State<DialogManager> {
  final DialogService _dialogService = locator<DialogService>();

  @override
  void initState() {
    super.initState();
    _dialogService.registerDialogListener(_showDialog);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _showDialog(DialogRequest request) {
    final bool isConfirmationDialog = request.cancelTitle != null;
    final bool isFunction = request.onOkayClicked != null;
    showDialog<AlertDialog>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          request.title,
          style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color:
                  request.title.contains('Error') ? Colors.red : Colors.black),
        ),
        content: Text(
          request.description,
          style: GoogleFonts.nunito(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Styles.colorGrey),
        ),
        actions: <Widget>[
          if (isConfirmationDialog)
            GestureDetector(
              onTap: () {
                _dialogService.dialogComplete(
                  DialogResponse(confirmed: false),
                );
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  request.cancelTitle,
                  style: GoogleFonts.nunito(
                      fontSize: 12,
                      color: Styles.colorPurple,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          GestureDetector(
            onTap: isFunction
                ? () {
                    request.onOkayClicked();
                  }
                : () {
                    _dialogService.dialogComplete(
                      DialogResponse(confirmed: true),
                    );
                  },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Styles.colorPurple),
              child: Text(
                request.buttonTitle,
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    letterSpacing: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
