import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String image;
  final String tag;

  const DetailsPage({Key? key, required this.image, required this.tag})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.25),
        child: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          flexibleSpace: Hero(
            tag: widget.tag,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover)),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chhaya Complex",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: OutlinedButton(
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(20)),
                      // BorderSide:
                      // BorderSide(width: 3, color: Colors.blue.shade300),

                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.blue.shade300),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Viewall(),
                        //   ),
                        // );
                      },
                    ),
                  ),
                ],
              ),
              Text("4 K.M",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.orange.shade700, size: 20),
                  Icon(Icons.star, color: Colors.orange.shade700, size: 20),
                  Icon(Icons.star, color: Colors.orange.shade700, size: 20),
                  Icon(Icons.star, color: Colors.orange.shade700, size: 20),
                  Icon(Icons.star, color: Colors.grey, size: 20),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "4.0",
                    style: TextStyle(
                        color: Colors.orange.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "(246 Reviews)",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 1.5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "50",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Likes",
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.message),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "14",
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Comments",
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "About the Parking",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.In vel purus vestibulum risus efficitur mollis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc a nunc eget nulla hendrerit finibus nec ut nulla. Nulla facilisi. Phasellus quis erat libero. Duis consectetur lorem accumsan massa sollicitudin sagittis.",
                style: TextStyle(color: Colors.grey, height: 1.5),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  createButton(
                      icon: Icon(Icons.book),
                      color: Colors.blue,
                      text: "Book Now"),
                  createButton(
                    icon: Icon(Icons.shopping_basket, color: Colors.white),
                    text: "Exit",
                    color: Colors.pink,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget createButton({icon, color, text}) {
    return ButtonTheme(
      minWidth: 160,
      height: 45,
      child: FlatButton.icon(
        onPressed: () {},
        icon: icon,
        label: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
