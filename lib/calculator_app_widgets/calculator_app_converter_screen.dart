import 'package:calculator_app/calculator_app_controllers/calculator_app_km_mile_converter_contoller.dart';
import 'package:flutter/material.dart';

class MileConverter extends StatefulWidget {
  const MileConverter({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MileConverter();
  }
}

class _MileConverter extends State<MileConverter> {
  late final TextEditingController _controller_Km_To_Mile = TextEditingController();
  num value = 0;
  num result = 0;


  @override
  void initState() {
    super.initState();
    _controller_Km_To_Mile.text = result.toString();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KM to Mile Converter'),
      ),
      body: Padding(
      padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextField(
                        onChanged: (val) => value = double.parse(val),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: ' Kilometers Amount',
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: TextField(
                        controller: _controller_Km_To_Mile,
                        enabled: false,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder()
                        ),
                      )
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children:  [
                  Expanded(
                      child:
                      OutlinedButton(onPressed: () {
                        KmToMileConverter controller =
                        KmToMileConverter(value);
                        result = controller.convertKmToMile();
                        setState(() {
                          _controller_Km_To_Mile.text = result.toString();
                        });
                        },
                        child: const Text("Convert to Miles")
                    ,)
                  )
                ],
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      }, child: const Text("Back"),
                  ),
                ],
              ),
            ],
        ),
      ),
    );
  }
}