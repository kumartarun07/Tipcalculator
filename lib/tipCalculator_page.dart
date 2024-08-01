import 'package:flutter/material.dart';
class TipcalculatorPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => TipcalculatorPagestate();
}
class TipcalculatorPagestate extends State<TipcalculatorPage>
{
  String? result ='';
  int count =1;
  int check=0;
  String? TotalBill='\$000';
  String? TotalTip='\$000';
  String? Totalper='\$000';
  TextEditingController abc = TextEditingController();
  @override
  Widget build(BuildContext context) {
           return SafeArea(
             child: Scaffold(backgroundColor: Color(0XFFF5F3F4),
               resizeToAvoidBottomInset: false,
               body: Column(
                   children: [
                 Expanded(flex: 2,child:
             Container(
               height: double.infinity,width: double.infinity,
             child: Center(
               child: Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset('asset/logo/cap.png'),
                   SizedBox(width: 20,),
                   Column(mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Row(
                       children: [
                         Text('Mr'),
                     Text('Tip',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                       ],
                     ),
                     Text('Calculator',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),



                   ],),
                 ],
               ),
             ),
             ),
             ),
                 SizedBox(height: 20,),
                 Expanded(flex: 5,child:
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 30),
                   child:
                   Container(padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white),
                     width: double.infinity,
                      child: Column(
                        children: [
                          Text('Total P/Person',style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 30),),
                          SizedBox(height: 20,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(width: 250,height: 70,
                              child: Center(child: Text('$Totalper',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Color(0XFF03C9BD)),)),
                              ),
                              ],),
                          SizedBox(height:20),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Total bill',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                                Text('$TotalBill',style:  TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0XFF03C9BD),),)
                              ],
                            ),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Total tip',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                                Text('$TotalTip',style:  TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0XFF03C9BD),),)
                              ],
                            ),
                          ],),

                        ],),
                   ),
                 ),
                 ),
                 SizedBox(height: 50,),
                 Expanded(flex: 2,child:
                 Container(padding: EdgeInsets.symmetric(horizontal: 40),
                   height: double.infinity,width: double.infinity,
                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   Column(crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     Text('Enter',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                     Text('your bill',style: TextStyle(fontSize: 20,)),
                   ],),
                   Column(children: [
                     Container(
                         height: 70,width: 250,color: Colors.white,
                         child: TextField(controller: abc,
                           textAlign: TextAlign.justify,style: TextStyle(fontSize: 50),
                           decoration: InputDecoration(
                             border:
                             OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                             ),
                               enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(30),
                                 borderSide: BorderSide(
                                   color: Colors.red
                                 )
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide(
                                   color: Colors.green
                                 ),
                                 borderRadius: BorderRadius.circular(30),
                               ),
                               hintText: '\$',hintStyle:TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),))
                   ],)
                 ],),


                 ),
                 ),
                 SizedBox(height: 20,),
                 Expanded(flex: 4,child:
                 Container(padding: EdgeInsets.symmetric(horizontal: 40),
                   height: double.infinity,width: double.infinity,
                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Column(crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('Choose',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                           Text('your tip',style: TextStyle(fontSize: 15,)),
                         ],),
                    //SizedBox(width: 15,),
                         Column(
                           children: [
                             Container(height:70, width: 250,
                                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Container(height: 70,width: 70,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0XFF03C9BD)),
                                         child: TextButton(onPressed: ()
                                         {
                                           Tip(1);
                                           },
                                             child: Text('10%',style:
                                             TextStyle(fontSize: 20,color: Colors.white),))),
                                     Container(height: 70,width: 70,
                                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0XFF03C9BD)),
                                         child: TextButton(onPressed: ()
                                         {
                                           Tip(2);
                                         },
                                             child: Text('15%',style:
                                             TextStyle(fontSize: 20,color: Colors.white),))),
                                     Container(height: 70,width: 70,
                                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Color(0XFF03C9BD)),
                                         child: TextButton(onPressed: ()
                                         {
                                           Tip(3);
                                         },
                                             child: Text('20%',style:
                                             TextStyle(fontSize: 20,color: Colors.white),))),

                                   ],
                                 )),
                             SizedBox(height: 20,),
                             InkWell(onTap: ()
                             {
                               Tip(check);
                               setState(() {

                               });
                             },
                               child: Container(height: 70,width: 250,decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(15),color:Color(0XFF03C9BD),
                               ),
                               child: Center(child: Text('Custom tip',style: TextStyle(fontSize: 30,color: Colors.white),)
                               ),),
                             )
                           ],
                         ),
                     ],),
                 ),
                 ),
                 Expanded(flex: 2,child:
                 Container(padding: EdgeInsets.symmetric(horizontal: 40),
                   height: double.infinity,width: double.infinity,
                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   Text('Split',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                   Text('The total',style: TextStyle(fontSize: 15,)),],),
                       Column(children: [
                         Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0XFF03C9BD),),
                             height: 70,width: 250,
                             child:
                             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                               TextButton(onPressed: (){
                                 if(count>1)
                                   {
                                     count--;
                                 setState(() {

                                 });
                                   }
                               }, child:Text('-',style: TextStyle(fontSize: 40,
                                   color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                               SizedBox(width: 5,),
                               Container(height: 70,width: 100,color: Colors.white,
                               child: TextField(style: TextStyle(fontSize: 50),
                                 textAlign: TextAlign.center,keyboardType: TextInputType.number,
                                 decoration: InputDecoration(hintText: '$count',hintStyle: TextStyle(fontSize: 50)),),
                               ),
                                 SizedBox(width: 5,),
                               TextButton(onPressed: (){
                                 count++;
                                 setState(()
                                 {

                                 });
                               },
                                   child:Text('+',style: TextStyle(fontWeight: FontWeight.bold,
                                   fontSize: 40,color: Colors.white,),))
                             ],),
                         ),
                       ],)
                     ],),
                 ),
                 ),
               ]),
             ),
           );
  }
void Tip(check)
{
      if(abc.text!="")
        {
                num no1 = int.parse(abc.text.toString());
                if(check==1)
                {
                  num Tip = no1 * 10 / 100;
                  TotalTip='${Tip.toStringAsFixed(2)}';
                  num Bill= Tip + no1;
                  TotalBill ='${Bill.toStringAsFixed(2)}';
                  num Person = Bill/count;
                  Totalper = '${Person.toStringAsFixed(2)}';
                }
                else if(check==2)
                {
                num Tip = no1 * 15 / 100;
                TotalTip ='${Tip.toStringAsFixed(2)}';
                num Bill=Tip + no1;
                TotalBill='${Bill.toStringAsFixed(2)}';
                num Person = Bill/count;
                Totalper ='${Person.toStringAsFixed(2)}';
                }
                else if(check==3)
                {
                  num Tip = no1 * 20 / 100;
                  TotalTip='${Tip.toStringAsFixed(2)}';
                  num Bill=Tip + no1;
                  TotalBill='${Bill.toStringAsFixed(2)}';
                  num Person = Bill/count;
                  Totalper = '${Person.toStringAsFixed(2)}';
                }
        }
      else
      {
        count==1;
      }
    }
}