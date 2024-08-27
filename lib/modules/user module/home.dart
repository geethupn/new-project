import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('hello geethu'),
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: true,
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              CircleAvatar(radius: 19),
              Text("geethu"),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('Contact'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 16, // Adjust the top padding to create some space below the AppBar
            bottom: MediaQuery.of(context).padding.bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "what you want to cook today",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                padding: EdgeInsets.fromLTRB(16, 0, 16, 18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "search receipies",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
                padding: EdgeInsets.fromLTRB(16, 0, 16, 18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.info_outline),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "3 categories arrive in the category",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "see recipies",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  ?.copyWith(
                                    color: Colors.black,
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "products",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("see all"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 280,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
  height: 200,
  width: 200,
  decoration: BoxDecoration(
    color: Colors.yellowAccent,
    borderRadius: BorderRadius.circular(8),
    image: DecorationImage(
      image: AssetImage("assets/image.png"), 
      fit: BoxFit.cover,
    ),
  ),
);
                  },
                  separatorBuilder: (_, __) {
                    return SizedBox(width: 16);
                  },
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "recipies",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("see all"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 280,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                   return Container(
  height: 200,
  width: 200,
  decoration: BoxDecoration(
    color: Colors.yellowAccent,
    borderRadius: BorderRadius.circular(8),
    image: DecorationImage(
      image: AssetImage("assets/image.png"), 
      fit: BoxFit.cover,
    ),
  ),
);
                  },
                  separatorBuilder: (_, __) {
                    return SizedBox(width: 16);
                  },
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
