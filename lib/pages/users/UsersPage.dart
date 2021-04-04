import "package:flutter/material.dart";

class UsersPage extends StatefulWidget {
  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  String inputQuery="";
  bool notVisible;

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
          title: Text("Users Page : $inputQuery")
      ),
      body: Center(
        child:Column(
          children: [
            Row(
              children: [
                //to say that this child.wight = page.wight
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        //for hidden text if true
                        obscureText: notVisible,
                        onChanged: (value){
                          //If text field input change
                        },
                        controller: textEditingController,
                        decoration: InputDecoration(
                          //icon showen in the left of textField
                            icon: Icon(Icons.logout),
                            //icon showen in the text Field in the right
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  notVisible = !notVisible;
                                });
                              },
                              icon :Icon(Icons.visibility),
                            ),
                            //space between text and border
                            contentPadding:EdgeInsets.only(left: 20),
                            //border of text field
                            border: OutlineInputBorder(
                                borderRadius:BorderRadius.circular(10) ,
                                borderSide: BorderSide(
                                  color: Colors.greenAccent,width: 1,
                                )
                            )
                        ),
                      )
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.search
                    , color: Colors.indigoAccent,),
                    onPressed: (){
                      //get the input from text field
                      setState(() {
                        this.inputQuery = textEditingController.text;
                      });
                })
              ],
            )
          ],
        ) ,
      ),
    );
  }
}
