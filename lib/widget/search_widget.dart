import 'package:flutter/material.dart';

///搜索组件
class SearchWidget extends StatefulWidget {
  final bool? readOnly;
  final String? hintTxt;
  final ValueChanged<TextEditingController>? controller;
  final ValueChanged<FocusNode>? focusNodeCallBack;
  final ValueChanged<bool>? hasFocusCallBack;
  final ValueChanged<bool>? emptyCallBack;
  final ValueChanged<String>? submitted;
  final Widget? searchIconImg;
  final Widget? delIconImg;
  final Size? searchIconSize;
  final Size? delIconSize;

  const SearchWidget(
      {Key? key,
      this.readOnly,
      this.controller,
      this.hintTxt,
      this.focusNodeCallBack,
      this.emptyCallBack,
      this.hasFocusCallBack,
      this.submitted,
      this.searchIconImg,
      this.delIconImg,
      this.searchIconSize,
      this.delIconSize
      })
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StateSearchWidget();
  }
}

class _StateSearchWidget extends State<SearchWidget> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();
  bool hasFocus = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      color: const Color(0xFFF2F2F2),
      child: AbsorbPointer(
        absorbing: widget.readOnly ?? false,
        child: getTextField(),
      ),
    );
  }



  Widget getTextField(){
    return TextField(
      onSubmitted: (text) {
        if (widget.submitted != null) {
          widget.submitted!(text);
        }
      },
      textInputAction: TextInputAction.search,
      focusNode: focusNode,
      controller: textEditingController,
      readOnly: widget.readOnly ?? false,
      style: const TextStyle(fontSize: 15 ),
      maxLength: 35,
      decoration: InputDecoration(
        isCollapsed: true,
        hintText: widget.hintTxt ?? '搜索',
        hintStyle: const TextStyle(fontSize: 14, color: Color(0xFFC6C6C6)),
        // prefixIcon: widget.searchIconImg ?? Image.asset("images/search/search_icon.png"),
        prefixIcon:SizedBox(),
        prefixIconConstraints: BoxConstraints.loose(widget.searchIconSize??const Size(18,18)),
        suffixIconConstraints: BoxConstraints.loose(widget.delIconSize??const Size(20,20)),
        suffixIcon: hasFocus && textEditingController.text.isNotEmpty
            ? GestureDetector(
          child: widget.delIconImg??Image.asset("images/search/search_del.png" ),
          onTap: () {
            textEditingController.text = "";
          },
        ) : const SizedBox(),
        focusedBorder: _inputBorder(),
        disabledBorder: _inputBorder(),
        enabledBorder: _inputBorder(),
        border: _inputBorder(),
        counterText: "",
        contentPadding: const EdgeInsets.all(0),
      ),
    );
  }

  InputBorder _inputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(width: 0, color: Colors.transparent),
    );
  }

  @override
  void initState() {
    textEditingController.addListener(() {
      if (textEditingController.text.isEmpty) {
        if (widget.emptyCallBack != null) {
          widget.emptyCallBack!(true);
        }
      }
      updateView();
    });

    if (widget.controller != null) {
      widget.controller!(textEditingController);
    }

    if (widget.focusNodeCallBack != null) {
      widget.focusNodeCallBack!(focusNode);
    }
    focusNode.addListener(() {
      hasFocus = focusNode.hasFocus;
      if (widget.focusNodeCallBack != null) {
        widget.focusNodeCallBack!(focusNode);
      }
      updateView();
    });
  }

  updateView() {
    if (mounted) {
      setState(() {});
    }
  }
}
