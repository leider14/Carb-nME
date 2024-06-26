import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyWdgTextField extends StatefulWidget {
  final String? title;
  final String? hintText;
  final TextEditingController? textEditingController;
  final bool isObscure;
  final IconData? iconData;
  final Function(String value)? onChanged;
  final VoidCallback? onClipBoardPressed;
  final VoidCallback? onQrPressed;
  final TextInputType keyboardType;
  const MyWdgTextField({super.key, this.title, this.hintText, this.textEditingController, this.onChanged, this.iconData,  this.onClipBoardPressed, this.onQrPressed, this.keyboardType = TextInputType.name, this.isObscure = false});

  @override
  State<MyWdgTextField> createState() => _MyWdgTextFieldState();
}

class _MyWdgTextFieldState extends State<MyWdgTextField> {

  bool isActive = false;
  bool obscure = true;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    focusNode.addListener(() {
      setState(() {
        isActive = focusNode.hasFocus;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(widget.title != null)
        Text(
          widget.title!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color.fromARGB(255, 53, 53, 53)
          ),
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [ 
                    BoxShadow(
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                      color: Colors.grey.withAlpha(60)
                    )
                  ]
                ),
                padding:const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    if(widget.iconData != null)Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        widget.iconData,
                        size: 18,
                        color: !isActive ? Colors.grey : Colors.purple,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        focusNode: focusNode,
                        controller: widget.textEditingController,
                        obscureText: widget.isObscure ? obscure : false,
                        keyboardType: widget.keyboardType,
                        decoration: InputDecoration(
                          hintText: widget.hintText,
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal
                          ),
                          border: InputBorder.none,
                          fillColor: Colors.red,
                          hoverColor: Colors.red,
                          focusColor: Colors.purple
                        ),
                        onChanged: (value) {
                          if(widget.onChanged != null){
                            widget.onChanged!(value);
                          }
                        },
                      ),
                    ),
                    if(widget.isObscure)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          obscure ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                          color: obscure ? Colors.purple :Colors.grey,
                          size: 20,
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
            if(widget.onQrPressed != null) Bounce(
              child: GestureDetector(
                onTap: () {
                   if(widget.onQrPressed != null){
                    widget.onQrPressed!();
                  }
                },
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 20,),
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                    boxShadow: [ BoxShadow(
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                      color: Colors.grey.withAlpha(60)
                    )]
                  ),
                  child:const Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.qrcode,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(" QR",
                       style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white
                       ),)
                    ],
                  ),
                ),
              ),
            ),
            if(widget.onClipBoardPressed != null) GestureDetector(
              onTap: () {
                 if(widget.onClipBoardPressed != null){
                  widget.onClipBoardPressed!();
                }
              },
              child: Container(
                height: 40,
                padding: const EdgeInsets.only(left: 10),
                child:const Icon(
                  FontAwesomeIcons.clipboard,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}