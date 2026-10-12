abstract class Payment{
  double calculateFee(double amount);
}

class CardPayment extends Payment{
  @override
  double calculateFee(double amount) => .02 * amount;
}

class CashPayment extends Payment{
  @override
  double calculateFee(double amount) => 0;
}

class CryptoPayment extends Payment{
  @override
  double calculateFee(double amount) => .05 * amount;
}

double calculateTotal(Payment payment, double amount) =>
  amount + payment.calculateFee(amount);

