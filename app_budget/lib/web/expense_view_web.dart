import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';
import '../view_model.dart';

bool isLoading = true;

class ExpenseViewWeb extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelProvider = ref.watch(viewModel);
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    if (isLoading == true) {
      //when build function keeps running, we dont want this code to keep fetching so
      viewModelProvider.expensesStream();
      viewModelProvider.incomesStream();
      isLoading = false;
    }

    int totalExpense = 0;
    int totalIncome = 0;
    void calculate() {
      for (int i = 0; i < viewModelProvider.expensesAmount.length; i++) {
        totalExpense =
            totalExpense + int.parse(viewModelProvider.expensesAmount[i]);
      }

      for (int i = 0; i < viewModelProvider.incomesAmount.length; i++) {
        totalIncome =
            totalIncome + int.parse(viewModelProvider.incomesAmount[i]);
      }
    }

    calculate();

    int budgetLeft = totalIncome - totalExpense;
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1.0, color: Colors.black)),
                  child: CircleAvatar(
                    radius: 180.0,
                    backgroundColor: Colors.white,
                    child: Image(
                      height: 100.0,
                      image: AssetImage('assets/logo.png'),
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              MaterialButton(
                onPressed: () async {
                  await viewModelProvider.logout();
                },
                child:
                    OpenSans(text: "Logout", size: 20.0, color: Colors.white),
                color: Colors.black,
                height: 50.0,
                minWidth: 200.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 20.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () async => await launchUrl(
                        Uri.parse("https://instagram.com/awasumina")),
                    icon: SvgPicture.asset(
                      "assets/instagram.svg",
                      width: 35.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () async => await launchUrl(
                        Uri.parse("https://twitter.com/awasumina")),
                    icon: SvgPicture.asset(
                      "assets/twitter.svg",
                      width: 35.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white, size: 20.0),
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Poppins(
            text: "Dashboard",
            size: 30.0,
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () async {
                //reset function
                viewModelProvider.reset();
              },
              icon: Icon(Icons.refresh),
            )
          ],
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 50.0,
            ),
            //image+addincome+total calucalation
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/login_image.png",
                  width: deviceHeight / 1.6,
                ),
                //add income and add expense
                SizedBox(
                  height: 300.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //add expense
                      SizedBox(
                        height: 45.0,
                        width: 160.0,
                        child: MaterialButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15.0,
                              ),
                              OpenSans(
                                  text: "Add Expense",
                                  size: 14.0,
                                  color: Colors.white),
                            ],
                          ),
                          splashColor: Colors.black,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          onPressed: () async {
                            await viewModelProvider.addExpense(context);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      //add income
                      SizedBox(
                        height: 45.0,
                        width: 160.0,
                        child: MaterialButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15.0,
                              ),
                              OpenSans(
                                  text: "Add income",
                                  size: 14.0,
                                  color: Colors.white),
                            ],
                          ),
                          splashColor: Colors.black,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          onPressed: () async {
                            await viewModelProvider.addExpense(context);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                        //total calculation
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 40.0,
                ),

                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 300.0,
                  width: 280.0,
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Poppins(
                            text: "Budget left",
                            size: 17.0,
                            color: Colors.white,
                          ),
                          Poppins(
                            text: "Total Expense",
                            size: 17.0,
                            color: Colors.white,
                          ),
                          Poppins(
                            text: "Total Income",
                            size: 17.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Divider(
                          indent: 40.0,
                          endIndent: 40.0,
                          color: Colors.black,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Poppins(
                              text: budgetLeft.toString(),
                              size: 14.0,
                              color: Colors.white),
                          Poppins(
                              text: totalExpense.toString(),
                              size: 14.0,
                              color: Colors.white),
                          Poppins(
                              text: totalIncome.toString(),
                              size: 14.0,
                              color: Colors.white),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Divider(
              indent: deviceWidth / 4,
              endIndent: deviceWidth / 4,
              thickness: 3.0,
            ),
            SizedBox(
              height: 50.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //expense list
                  Column(
                    children: [
                      OpenSans(text: "Expenses", size: 15.0),
                      Container(
                        padding: EdgeInsets.all(7.0),
                        height: 210.0,
                        width: 180.0,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            border:
                                Border.all(width: 1.0, color: Colors.black)),
                        child: ListView.builder(
                            itemCount: viewModelProvider.expensesAmount.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Poppins(
                                      text:
                                          viewModelProvider.expensesName[index],
                                      size: 12.0),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Poppins(
                                        text: viewModelProvider
                                            .expensesAmount[index],
                                        size: 12.0),
                                  )
                                ],
                              );
                            }),
                      )
                    ],
                  ),
                  //income List
                  Column(
                    children: [
                      OpenSans(text: "Incomes", size: 15.0),
                      Container(
                        padding: EdgeInsets.all(7.0),
                        height: 210.0,
                        width: 180.0,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            border:
                                Border.all(width: 1.0, color: Colors.black)),
                        child: ListView.builder(
                            itemCount: viewModelProvider.incomesAmount.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Poppins(
                                      text:
                                          viewModelProvider.incomesName[index],
                                      size: 12.0),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Poppins(
                                        text: viewModelProvider
                                            .incomesAmount[index],
                                        size: 12.0),
                                  )
                                ],
                              );
                            }),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
