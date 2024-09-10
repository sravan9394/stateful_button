import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool ischecked = false;
  bool isswitched = false;
  dynamic? gender;
  String? number;
  List<String> legends = [
    "Pelé",
    "Diego Maradona",
    "Johan Cruyff",
    "Zinedine Zidane",
    "Ronaldo Nazário",
    "David Beckham",
    "Thierry Henry",
    "Ronaldinho",
    "Paolo Maldini",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: ischecked,
                onChanged: (value) {
                  setState(() {
                    ischecked = value!;
                    print(ischecked);
                  });
                }),
            Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                value: isswitched,
                onChanged: (value) {
                  setState(() {
                    isswitched = value!;
                    print(isswitched);
                  });
                }),
            Radio(
                value: "human",
                groupValue: "",
                onChanged: (value) {
                  print(value);
                }),
            RadioListTile(
                title: Text("MALE"),
                value: "Male",
                groupValue: gender,
                onChanged: (value) {
                  gender = value;
                  setState(() {});
                }),
            RadioListTile(
                title: Text("FEMALE"),
                value: "Female",
                groupValue: gender,
                onChanged: (value) {
                  gender = value;
                  setState(() {});
                }),
            RadioListTile(
                title: Text("OTHERS"),
                value: "Others",
                groupValue: gender,
                onChanged: (value) {
                  gender = value;
                  setState(() {});
                }),
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("profile"),
                        onTap: () {},
                      ),
                      PopupMenuItem(
                        child: Text("settings"),
                        onTap: () {},
                      ),
                    ]),
            // DropdownButton(
            //     value: number,
            //     items: [
            //       DropdownMenuItem(
            //         child: Text("ONE"),
            //         value: "one",
            //       ),
            //       DropdownMenuItem(
            //         child: Text("TWO"),
            //         value: "two",
            //       ),
            //       DropdownMenuItem(
            //         child: Text("THREE"),
            //         value: "three",
            //       ),
            //       DropdownMenuItem(
            //         child: Text("FOUR"),
            //         value: "four",
            //       )
            //     ],
            //     onChanged: (value) {
            //       number = value;
            //       setState(() {});
            //     }),
            DropdownButton(
                value: number,
                items: List.generate(
                    legends.length,
                    (index) => DropdownMenuItem(
                          child: Text(legends[index]),
                          value: legends[index],
                        )),
                onChanged: (value) {
                  number = value;
                  setState(() {});
                }),
            ExpansionTile(
              collapsedShape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              backgroundColor: Colors.yellow,
              collapsedBackgroundColor: Colors.red,
              title: Text("My Title"),
              children: [
                Container(
                  height: 100,
                  color: Colors.black,
                )
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("WARNING"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Are sure you want to exit"),
                              ],
                            ),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text("yes")),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("no")),
                            ],
                          ));
                },
                child: Text("alert")),
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: StatefulBuilder(
                              builder: (context, setbottomState) => Switch(
                                  activeColor: Colors.green,
                                  inactiveThumbColor: Colors.red,
                                  value: isswitched,
                                  onChanged: (value) {
                                    setbottomState(() {
                                      isswitched = value!;
                                      print(isswitched);
                                    });
                                    setState(() {});
                                  }),
                            ),
                          )));
                },
                child: Text("botton sheet"))
          ],
        ),
      ),
    );
  }
}




// switch
//checkbox
//dropdown button
//radio button
//popup menu button