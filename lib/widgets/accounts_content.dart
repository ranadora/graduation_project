import 'package:flutter/material.dart';

class AcccountsContent extends StatefulWidget {
  const AcccountsContent({super.key});

  @override
  State<AcccountsContent> createState() => _AcccountsContentState();
}

class _AcccountsContentState extends State<AcccountsContent> {
  final TextEditingController searchController= TextEditingController();
  List<String> items=["GitHub" ,"Google","LinkedIn","Figma"];
  String searchText='';
  @override
  void dispose(){
    searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    List<String> filteredItems = items.where((element) => element.toLowerCase().contains(searchText.toLowerCase())).toList();
    return  SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [


          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

               Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Accounts',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF10152F),
                      ),
                    ),

                    SizedBox(height: 12),

                    Text(
                      'Manage account metadata while secrets stay encrypted on your device.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 8),

             
              SizedBox(
                width: 65,
                height: 65,

                child: ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF08477B),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),

                  child: const Icon(
                    Icons.add,
                    size: 38,
                  ),
                ),
              ),
            ],
          ),SizedBox(height: 20,),

          Container(width: double.infinity,padding: EdgeInsets.all(15),margin: EdgeInsets.all(15),
decoration: BoxDecoration(color: Color(0xFFE6F0FA) ,boxShadow: [BoxShadow(color: Colors.black45)],
borderRadius: BorderRadius.circular(15)),

child: Row(crossAxisAlignment: CrossAxisAlignment.start ,children: [ 
                       
  Icon(Icons.gpp_good_outlined,size: 30,color:Color(0xFF08477B) ,), Column(children: [Text('passwords are not stored in this app', style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF08477B),
                        fontWeight: FontWeight.w600,
                      ),),
  SizedBox(height: 3,), Text('secureVault keeps passwords and TOTP secrets encrypted on the hardware device.',
  style: TextStyle(fontSize: 16,color: Colors.grey))

  ],)
],),

),SizedBox(height: 7,),

Center(

        child: Padding(

          padding: const EdgeInsets.all(20),

          child: Column(

            mainAxisSize: MainAxisSize.min,

            children: [

              TextField(

                controller: searchController,

                onChanged: (value) {

                  setState(() {

                    searchText = value;

                  });

                },

                decoration: InputDecoration(

                  labelText: 'Search accounts,usernames or websites',

                  prefixIcon: const Icon(Icons.search),

                  suffixIcon: searchText.isNotEmpty

                      ? IconButton(

                          icon: const Icon(Icons.clear),

                          onPressed: () {

                            searchController.clear();

                            setState(() {

                              searchText = '';

                            });

                          },

                        )

                      : null,

                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(12),

                  ),

                ),

              ),

              const SizedBox(height: 10),

              if (searchText.isNotEmpty)

                SizedBox(

                  height: 200,

                  child: ListView.builder(

                    itemCount: filteredItems.length,

                    itemBuilder: (context, index) {

                      return ListTile(

                        title: Text(filteredItems[index]),

                      );

                    },

                  ),

                ),

            ],

          ),)),






          ]));
  }
}

