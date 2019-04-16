import 'package:flutter/material.dart';
class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

  final _formkey=GlobalKey<FormState>();
  final mycontroller=TextEditingController();

  @override
  void initState()
  {
    super.initState();
    mycontroller.addListener(_sonDegeriYazdir);
  }

  _sonDegeriYazdir()
  {
    print("Text : ${mycontroller.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Form Validate"),
       ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                validator: (value){
                  if(value.isEmpty)
                  return "Lütfen yazı girin";
                },
                controller: mycontroller,
                
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Bişeyler yazın"
                  ),
                  onChanged: (yazi){
                    print("Onchange olayı :$yazi");
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: (){
                      if(_formkey.currentState.validate()){
                        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Veri İşleniyor...")));
                      }
                    },
                    child: Text("Kabul"),
                  ),
                )
            ],
          ),
      ),
        ),
    );
  }
}