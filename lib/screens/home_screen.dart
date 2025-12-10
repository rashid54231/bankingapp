import 'package:flutter/material.dart';
import '../routes.dart';
import '../widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],

      // ------------------------------------
      // APP BAR
      // ------------------------------------
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF667eea), Color(0xFF764ba2)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.account_balance, color: Colors.white, size: 24),
            ),
            const SizedBox(width: 12),
            const Text(
              'My Bank',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined, color: Colors.white),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.login);
            },
          ),
        ],
      ),

      // ------------------------------------
      // BODY — with SAFEAREA & PADDING (FIXED)
      // ------------------------------------
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // ------------------------------------
                // HEADER BALANCE CARD
                // ------------------------------------
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF667eea), Color(0xFF764ba2)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF667eea).withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.fromLTRB(24, 10, 24, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Name Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Good Morning,',
                                style: TextStyle(color: Colors.white70, fontSize: 14),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          // GOLD BADGE
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white.withOpacity(0.3)),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.stars, color: Colors.amber[300], size: 16),
                                const SizedBox(width: 4),
                                const Text(
                                  'Gold',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      const Text(
                        'Total Balance',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      const SizedBox(height: 8),

                      Row(
                        children: [
                          const Text(
                            '\$17,000',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -1,
                            ),
                          ),
                          const Text(
                            '.00',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Row(
                              children: [
                                Icon(Icons.trending_up,
                                    color: Colors.greenAccent, size: 14),
                                SizedBox(width: 4),
                                Text(
                                  '+12.5%',
                                  style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      // QUICK ACTIONS
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white.withOpacity(0.2)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildQuickAction(
                                icon: Icons.send_rounded, label: 'Send', onTap: () {}),
                            _buildQuickAction(
                                icon: Icons.call_received_rounded,
                                label: 'Request',
                                onTap: () {}),
                            _buildQuickAction(
                                icon: Icons.qr_code_scanner_rounded,
                                label: 'Scan',
                                onTap: () {}),
                            _buildQuickAction(
                                icon: Icons.grid_view_rounded,
                                label: 'More',
                                onTap: () {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // ------------------------------------
                // MY CARDS — FIXED HEIGHT
                // ------------------------------------
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'My Cards',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 210,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            _buildCreditCard(
                              cardNumber: '**** **** **** 4829',
                              cardHolder: 'JOHN DOE',
                              expiryDate: '12/25',
                              balance: '\$5,420.00',
                              gradient: const LinearGradient(
                                colors: [Color(0xFF1e3c72), Color(0xFF2a5298)],
                              ),
                            ),
                            _buildCreditCard(
                              cardNumber: '**** **** **** 7651',
                              cardHolder: 'JOHN DOE',
                              expiryDate: '09/26',
                              balance: '\$12,180.00',
                              gradient: const LinearGradient(
                                colors: [Color(0xFFee0979), Color(0xFFff6a00)],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // ------------------------------------
                // INCOME / EXPENSE CARDS
                // ------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: _buildStatCard(
                          title: 'Income',
                          amount: '\$4,250',
                          percentage: '+8.2%',
                          icon: Icons.arrow_downward_rounded,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildStatCard(
                          title: 'Expenses',
                          amount: '\$2,840',
                          percentage: '+3.1%',
                          icon: Icons.arrow_upward_rounded,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // ------------------------------------
                // ACCOUNTS
                // ------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'My Accounts',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward, size: 16),
                        label: const Text('View All'),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      _buildEnhancedAccountCard(
                        title: 'Checking Account',
                        accountNumber: '****4829',
                        balance: '\$5,000.00',
                        icon: Icons.account_balance_wallet_rounded,
                        color: const Color(0xFF667eea),
                        onTap: () {
                          Navigator.pushNamed(context, Routes.transaction);
                        },
                      ),
                      const SizedBox(height: 12),
                      _buildEnhancedAccountCard(
                        title: 'Savings Account',
                        accountNumber: '****7651',
                        balance: '\$12,000.00',
                        icon: Icons.savings_rounded,
                        color: const Color(0xFF06beb6),
                        onTap: () {
                          Navigator.pushNamed(context, Routes.transaction);
                        },
                      ),
                      const SizedBox(height: 12),
                      _buildEnhancedAccountCard(
                        title: 'Credit Card',
                        accountNumber: '****3421',
                        balance: '\$3,500.00',
                        icon: Icons.credit_card_rounded,
                        color: const Color(0xFFf093fb),
                        onTap: () {
                          Navigator.pushNamed(context, Routes.transaction);
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // ------------------------------------
                // RECENT TRANSACTIONS
                // ------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Recent Transactions',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.transaction);
                        },
                        icon: const Icon(Icons.arrow_forward, size: 16),
                        label: const Text('See All'),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      _buildTransactionItem(
                        icon: Icons.shopping_bag_rounded,
                        title: 'Amazon Purchase',
                        category: 'Shopping',
                        date: 'Today, 2:30 PM',
                        amount: '-\$89.99',
                        isNegative: true,
                        color: Colors.orange,
                      ),
                      _buildTransactionItem(
                        icon: Icons.restaurant_rounded,
                        title: 'The Garden Restaurant',
                        category: 'Food & Dining',
                        date: 'Yesterday, 7:15 PM',
                        amount: '-\$45.50',
                        isNegative: true,
                        color: Colors.red,
                      ),
                      _buildTransactionItem(
                        icon: Icons.account_balance_rounded,
                        title: 'Salary Deposit',
                        category: 'Income',
                        date: '2 days ago',
                        amount: '+\$2,500.00',
                        isNegative: false,
                        color: Colors.green,
                      ),
                      _buildTransactionItem(
                        icon: Icons.local_gas_station_rounded,
                        title: 'Shell Gas Station',
                        category: 'Transportation',
                        date: '3 days ago',
                        amount: '-\$52.00',
                        isNegative: true,
                        color: Colors.blue,
                      ),
                      _buildTransactionItem(
                        icon: Icons.subscriptions_rounded,
                        title: 'Netflix Subscription',
                        category: 'Entertainment',
                        date: '5 days ago',
                        amount: '-\$14.99',
                        isNegative: true,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ----------------------------------------------------
  // WIDGET FUNCTIONS
  // ----------------------------------------------------

  Widget _buildQuickAction({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.25),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: Colors.white, size: 26),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _buildCreditCard({
    required String cardNumber,
    required String cardHolder,
    required String expiryDate,
    required String balance,
    required Gradient gradient,
  }) {
    return Container(
      width: 310,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Balance',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
              Icon(Icons.contactless_rounded,
                  color: Colors.white.withOpacity(0.8), size: 32),
            ],
          ),
          Text(
            balance,
            style: const TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            cardNumber,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('CARD HOLDER',
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10,
                          letterSpacing: 1)),
                  const SizedBox(height: 4),
                  Text(cardHolder,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('EXPIRES',
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10,
                          letterSpacing: 1)),
                  const SizedBox(height: 4),
                  Text(expiryDate,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.more_horiz,
                    color: Colors.white, size: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard({
    required String title,
    required String amount,
    required String percentage,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: color, size: 22),
              ),
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  percentage,
                  style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(title,
              style: TextStyle(color: Colors.grey[600], fontSize: 13)),
          const SizedBox(height: 4),
          Text(
            amount,
            style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ],
      ),
    );
  }

  Widget _buildEnhancedAccountCard({
    required String title,
    required String accountNumber,
    required String balance,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [color, color.withOpacity(0.7)],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(icon, color: Colors.white, size: 28),
            ),
            const SizedBox(width: 16),

            // Text Section
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87)),
                  const SizedBox(height: 4),
                  Text(accountNumber,
                      style: TextStyle(fontSize: 13, color: Colors.grey[600])),
                ],
              ),
            ),

            // Balance section
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(balance,
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87)),
                const SizedBox(height: 4),
                Icon(Icons.arrow_forward_ios,
                    size: 14, color: Colors.grey[400]),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionItem({
    required IconData icon,
    required String title,
    required String category,
    required String date,
    required String amount,
    required bool isNegative,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.08),
              blurRadius: 8,
              offset: const Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87)),
                const SizedBox(height: 4),
                Text(category,
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                        fontWeight: FontWeight.w500)),
                const SizedBox(height: 2),
                Text(date,
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey[400])),
              ],
            ),
          ),

          Text(
            amount,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isNegative ? Colors.red[600] : Colors.green[600],
            ),
          ),
        ],
      ),
    );
  }
}
