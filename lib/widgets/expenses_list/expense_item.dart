import 'package:flutter/material.dart';
import 'package:expenses_app/models/expense.dart';


class ExpenseItem extends StatelessWidget {
const ExpenseItem(this.expense, {super.key});

final Expense expense;

@override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20, vertical: 15,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
          Text(expense.title, style: Theme.of(context).textTheme.titleLarge,),
          const SizedBox(height:6),
          Row(
            children: [ // backwards slash "\$" til að escape'a dollar sign
              Text('\$${expense.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(
                children: [
                  Icon(categoryIcons[expense.category]),
                  const SizedBox(width:8),
                  Text(expense.formattedDate),
                ],
              ), //fixed to two digits after comma. dæmi:12.3433 = 12.34
            ],)
        ],),
      ),);
  }
}