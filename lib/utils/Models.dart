class PersonDetails{
   int age;
   int height;
   int weight;
   String gender;
   String resultBMI;
   String resultTitle;
   String interpretation;
   String imageUrl;  
  PersonDetails({this.age,this.gender,this.weight,this.resultBMI,this.resultTitle,this.interpretation,this.imageUrl, int height});
}
class Details{
  String title;
  String text;
  Details({
    this.text,this.title
  });
}