import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../widgets/custom_card.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  // Sample transaction list
  final List<TransactionModel> transactions = const [
    TransactionModel(title: 'Grocery', amount: -50.0, date: '2025-12-01'),
    TransactionModel(title: 'Salary', amount: 2000.0, date: '2025-12-01'),
    TransactionModel(title: 'Electricity Bill', amount: -120.0, date: '2025-11-30'),
    TransactionModel(title: 'Coffee', amount: -5.0, date: '2025-11-29'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final tx = transactions[index];
          return CustomCard(
            title: tx.title,
            subtitle: '${tx.date} | ${tx.amount >= 0 ? '+' : ''}\$${tx.amount}',
            icon: tx.amount >= 0 ? Icons.arrow_downward : Icons.arrow_upward,
            onTap: () {},
          );
        },
      ),
    );
  }
}
