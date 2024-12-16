import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({
    super.key,
    this.focusqrcode,
    this.iconqrcode,
    this.iconextension,
    this.iconhome,
    this.iconnotification,
    this.iconaccount,
    this.focusextension,
    this.focushome,
    this.focusnotification,
    this.focusaccount,
  });

  final Color? focusqrcode;
  final Color? iconqrcode;
  final Color? iconextension;
  final Color? iconhome;
  final Color? iconnotification;
  final Color? iconaccount;
  final Color? focusextension;
  final Color? focushome;
  final Color? focusnotification;
  final Color? focusaccount;

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: const BoxDecoration(
          color: Color(0xFFE5EEF2),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 70.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: widget.focusqrcode,
                        borderRadius: BorderRadius.circular(20.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Icon(
                        Icons.qr_code_2_rounded,
                        color: widget.iconqrcode,
                        size: 26.0,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (Navigator.of(context).canPop()) {
                          context.pop();
                        }
                        context.pushNamed('extensionPage');
                      },
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: widget.focusextension,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.extension_rounded,
                          color: widget.iconextension,
                          size: 26.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.goNamed('homePage');
                      },
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: widget.focushome,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.home_rounded,
                          color: widget.iconhome,
                          size: 26.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (Navigator.of(context).canPop()) {
                          context.pop();
                        }
                        context.pushNamed('notificationPage');
                      },
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: widget.focusnotification,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.notifications_rounded,
                          color: widget.iconnotification,
                          size: 26.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (Navigator.of(context).canPop()) {
                          context.pop();
                        }
                        context.pushNamed('accountPage');
                      },
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: widget.focusaccount,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.account_circle_sharp,
                          color: widget.iconaccount,
                          size: 26.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
