class DataItem{

  List<Map<String,dynamic>>data=[
    {
      'id':0,
      'name':'Wireless Controller for PS4™',
      'image':'assets/images/Image Popular Product 1.png',
      'isPressed':true,
      'prise':'\$64.99'

    },
    {
      'id':1,
      'name':'Nike Sport White-Man Pant',
      'image':'assets/images/Image Popular Product 2.png',
      'isPressed':true,
      'prise':'\$50.5'

    },
    {
      'id':2,
      'name':'Motorcycle Helmet Man Pant',
      'image':'assets/images/Image Popular Product 3.png',
      'isPressed':true,
      'prise':'\$36.99'
    }
  ];

  void ItemsPressed(int index){
    if(index>=0 &&index<data.length){
      data[index]['isPressed']=!data[index]['isPressed'];
    }
  }
}